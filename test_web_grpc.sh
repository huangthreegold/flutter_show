#!/bin/bash

# 快速测试 Web gRPC 配置

echo "🧪 测试 Web gRPC 配置"
echo "===================="
echo ""

# 测试 1: 检查 Envoy
if [ -x "./envoy" ]; then
    echo "✓ Envoy 可执行文件存在"
else
    echo "✗ Envoy 未找到或无执行权限"
    exit 1
fi

# 测试 2: 检查配置文件
if [ -f "envoy.yaml" ]; then
    echo "✓ envoy.yaml 配置文件存在"
else
    echo "✗ envoy.yaml 未找到"
    exit 1
fi

# 测试 3: 检查 Flutter 代码
if [ -f "lib/site_health_grpc_client_platform.dart" ]; then
    echo "✓ 跨平台 gRPC 客户端存在"
else
    echo "✗ gRPC 客户端代码未找到"
    exit 1
fi

# 测试 4: 检查 Chrome
if flutter devices 2>/dev/null | grep -q "Chrome"; then
    echo "✓ Chrome 浏览器可用"
else
    echo "✗ Chrome 未找到"
fi

echo ""
echo "===================="
echo "✓ 配置检查通过！"
echo ""
echo "准备启动 Web gRPC："
echo "  ./start_web_grpc.sh"
echo ""
