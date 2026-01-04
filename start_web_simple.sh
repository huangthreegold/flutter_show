#!/bin/bash

# 简单的 Web 启动脚本（不需要 Docker）
# 直接在 Chrome 中启动 Flutter Web 应用

echo "🌐 启动 Flutter Web 应用"
echo "======================="
echo ""

# 提示信息
echo "📝 注意："
echo "   - 应用会在 Chrome 浏览器中启动"
echo "   - 如果需要 gRPC 功能，请确保后端服务运行在 localhost:50051"
echo "   - gRPC-Web 需要代理（可选，如果不用 gRPC 可忽略）"
echo ""

# 检查 Chrome 是否可用
if flutter devices | grep -q "Chrome"; then
    echo "✓ Chrome 浏览器可用"
else
    echo "⚠ Chrome 浏览器未找到"
fi

echo ""
echo "🚀 正在启动..."
echo ""

# 直接运行 Flutter Web
flutter run -d chrome
