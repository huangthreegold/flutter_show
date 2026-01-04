#!/bin/bash

# Web gRPC 完整启动脚本
# 自动启动所有需要的服务

set -e

echo "🚀 启动 Web gRPC 开发环境"
echo "========================================"
echo ""

# 颜色定义
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# 清理函数
cleanup() {
    echo ""
    echo "🧹 正在清理..."
    
    # 停止 Envoy
    if [ ! -z "$ENVOY_PID" ]; then
        kill $ENVOY_PID 2>/dev/null || true
        echo "✓ Envoy 已停止"
    fi
    
    # 停止 gRPC 服务器
    if [ ! -z "$GRPC_PID" ]; then
        kill $GRPC_PID 2>/dev/null || true
        echo "✓ gRPC 服务器已停止"
    fi
    
    echo -e "${GREEN}完成！${NC}"
    exit 0
}

# 注册退出处理
trap cleanup EXIT INT TERM

# 1. 检查 Envoy
echo "📦 步骤 1/3: 检查 Envoy 代理..."
if [ ! -f "./envoy" ]; then
    echo -e "${RED}✗ Envoy 未找到${NC}"
    echo "正在下载 Envoy..."
    curl -L -o envoy https://github.com/envoyproxy/envoy/releases/download/v1.28.0/envoy-1.28.0-linux-x86_64
    chmod +x envoy
    echo -e "${GREEN}✓ Envoy 下载完成${NC}"
else
    echo -e "${GREEN}✓ Envoy 已就绪${NC}"
fi

# 2. 启动 gRPC 服务器
echo ""
echo "🔌 步骤 2/3: 启动 gRPC 服务器..."

if nc -z localhost 50051 2>/dev/null; then
    echo -e "${GREEN}✓ gRPC 服务器已在运行${NC}"
else
    if [ -f "grpc_server_example.py" ]; then
        python3 grpc_server_example.py > /tmp/grpc_server.log 2>&1 &
        GRPC_PID=$!
        
        # 等待服务器启动
        echo "等待 gRPC 服务器启动..."
        for i in {1..10}; do
            if nc -z localhost 50051 2>/dev/null; then
                echo -e "${GREEN}✓ gRPC 服务器已启动 (PID: $GRPC_PID)${NC}"
                break
            fi
            sleep 1
        done
        
        if ! nc -z localhost 50051 2>/dev/null; then
            echo -e "${RED}✗ gRPC 服务器启动失败${NC}"
            echo "查看日志: tail /tmp/grpc_server.log"
            exit 1
        fi
    else
        echo -e "${YELLOW}⚠ grpc_server_example.py 未找到${NC}"
        echo "请手动启动 gRPC 服务器在另一个终端"
        read -p "服务器启动后按回车继续..."
    fi
fi

# 3. 启动 Envoy 代理
echo ""
echo "🚪 步骤 3/3: 启动 Envoy gRPC-Web 代理..."

# 停止可能存在的旧进程
pkill -f "envoy.*envoy.yaml" 2>/dev/null || true
sleep 1

# 启动 Envoy
./envoy -c envoy.yaml > /tmp/envoy.log 2>&1 &
ENVOY_PID=$!

# 等待 Envoy 启动
echo "等待 Envoy 启动..."
for i in {1..10}; do
    if nc -z localhost 8080 2>/dev/null; then
        echo -e "${GREEN}✓ Envoy 代理已启动 (PID: $ENVOY_PID, 端口: 8080)${NC}"
        break
    fi
    sleep 1
done

if ! nc -z localhost 8080 2>/dev/null; then
    echo -e "${RED}✗ Envoy 启动失败${NC}"
    echo "查看日志: tail /tmp/envoy.log"
    exit 1
fi

# 显示状态
echo ""
echo "========================================"
echo -e "${GREEN}✓ 所有服务已启动！${NC}"
echo "========================================"
echo ""
echo "服务状态："
echo "  📡 gRPC 服务器: localhost:50051"
echo "  🚪 Envoy 代理:   localhost:8080"
echo ""
echo "架构："
echo "  Flutter Web → Envoy (8080) → gRPC Server (50051)"
echo ""
echo "现在启动 Flutter Web 应用..."
echo ""
echo "按 Ctrl+C 停止所有服务"
echo "========================================"
echo ""

# 4. 启动 Flutter Web
flutter run -d chrome

# Flutter 退出后清理
cleanup
