#!/bin/bash

# 在 Ubuntu/Debian 上安装 Docker 并启动 Web gRPC 环境

echo "🐳 Docker 快速安装和配置"
echo "========================="
echo ""

# 检查是否已安装
if command -v docker &> /dev/null; then
    echo "✓ Docker 已安装"
else
    echo "📦 正在安装 Docker..."
    echo ""
    
    read -p "是否现在安装 Docker？(y/n) " -n 1 -r
    echo
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # 安装 Docker
        echo "1. 更新软件包..."
        sudo apt-get update
        
        echo "2. 安装依赖..."
        sudo apt-get install -y ca-certificates curl gnupg
        
        echo "3. 添加 Docker GPG 密钥..."
        sudo install -m 0755 -d /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
        sudo chmod a+r /etc/apt/keyrings/docker.gpg
        
        echo "4. 添加 Docker 仓库..."
        echo \
          "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
          $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
          sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        
        echo "5. 安装 Docker Engine..."
        sudo apt-get update
        sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
        
        echo "6. 配置用户权限..."
        sudo usermod -aG docker $USER
        
        echo ""
        echo "✓ Docker 安装完成！"
        echo ""
        echo "⚠️ 重要：需要重新登录才能使用 Docker（不需要 sudo）"
        echo "   运行: newgrp docker"
        echo "   或者：注销并重新登录"
        echo ""
    else
        echo "跳过安装"
        exit 1
    fi
fi

echo ""
echo "🚀 启动 gRPC-Web 代理（Envoy）..."
echo ""

# 停止旧容器
docker stop envoy-grpc-web 2>/dev/null || true
docker rm envoy-grpc-web 2>/dev/null || true

# 启动 Envoy
docker run -d \
  --name envoy-grpc-web \
  -p 8080:8080 \
  -v "$(pwd)/envoy.yaml:/etc/envoy/envoy.yaml:ro" \
  --add-host=host.docker.internal:host-gateway \
  envoyproxy/envoy:v1.28-latest

if [ $? -eq 0 ]; then
    echo "✓ Envoy 代理已启动 (端口 8080)"
    echo ""
    echo "现在可以运行："
    echo "  flutter run -d chrome"
else
    echo "✗ Envoy 启动失败"
    exit 1
fi
