#!/bin/bash

# 🚀 快速启动脚本
# 用于启动 Flutter 应用并连接到 gRPC 服务器

echo "====================================="
echo "  场地健康监控系统 - 启动脚本"
echo "====================================="
echo ""

# 检查 Flutter 是否安装
if ! command -v flutter &> /dev/null; then
    echo "❌ 错误: 未找到 Flutter"
    echo "请先安装 Flutter: https://flutter.dev/docs/get-started/install"
    exit 1
fi

echo "✓ Flutter 已安装"
echo ""

# 读取配置
GRPC_HOST=$(grep "static const String host" lib/grpc_config.dart | sed -E "s/.*'(.*)'.*/\1/")
GRPC_PORT=$(grep "static const int port" lib/grpc_config.dart | sed -E "s/.*= ([0-9]+).*/\1/")

echo "📡 gRPC 配置:"
echo "   服务器地址: $GRPC_HOST"
echo "   端口: $GRPC_PORT"
echo ""

# 提示检查服务器
echo "⚠️  请确保 gRPC 服务器正在运行!"
echo "   检查方法: netstat -an | grep $GRPC_PORT"
echo ""

read -p "按 Enter 继续启动，或 Ctrl+C 取消..."
echo ""

# 更新依赖
echo "📦 检查依赖..."
flutter pub get

if [ $? -ne 0 ]; then
    echo "❌ 依赖安装失败"
    exit 1
fi

echo ""
echo "✓ 依赖检查完成"
echo ""

# 选择运行平台
echo "请选择运行平台:"
echo "1) Linux (桌面)"
echo "2) Web (浏览器)"
echo "3) Android"
echo "4) 自定义"
echo ""

read -p "请输入选项 (1-4, 默认 1): " choice
choice=${choice:-1}

case $choice in
    1)
        echo ""
        echo "🚀 启动 Linux 版本..."
        flutter run -d linux
        ;;
    2)
        echo ""
        echo "🚀 启动 Web 版本..."
        flutter run -d chrome
        ;;
    3)
        echo ""
        echo "🚀 启动 Android 版本..."
        flutter run -d android
        ;;
    4)
        echo ""
        flutter devices
        echo ""
        read -p "请输入设备 ID: " device_id
        echo ""
        echo "🚀 启动在设备: $device_id"
        flutter run -d "$device_id"
        ;;
    *)
        echo "❌ 无效选项"
        exit 1
        ;;
esac

echo ""
echo "👋 应用已关闭"
