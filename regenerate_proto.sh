#!/bin/bash

# 重新生成 Protocol Buffer 代码
# 用于从 .proto 文件生成 Dart gRPC 客户端代码

echo "======================================"
echo "  重新生成 Protocol Buffer 代码"
echo "======================================"
echo ""

cd "$(dirname "$0")"

# 检查 protoc 是否安装
if ! command -v protoc &> /dev/null; then
    echo "❌ 错误: 未找到 protoc"
    echo "请安装 Protocol Buffer 编译器"
    exit 1
fi

# 检查 protoc-gen-dart 是否安装
if ! command -v protoc-gen-dart &> /dev/null; then
    echo "⚠️  未找到 protoc-gen-dart，正在安装兼容版本..."
    dart pub global activate protoc_plugin 21.1.2
    
    if [ $? -ne 0 ]; then
        echo "❌ 安装 protoc_plugin 失败"
        exit 1
    fi
    
    echo "✓ protoc_plugin 21.1.2 已安装"
fi

# 确保 PATH 包含 dart pub bin
export PATH="$PATH:$HOME/.pub-cache/bin"

echo "📦 清理旧代码..."
rm -rf lib/generated

echo "📁 创建输出目录..."
mkdir -p lib/generated

echo "🔨 生成 Dart gRPC 代码..."
protoc --dart_out=grpc:lib/generated \
  -Iprotos \
  -I/usr/include \
  protos/site_health.proto \
  protos/types.proto \
  protos/central_map_service.proto \
  protos/get_marker_data.proto \
  protos/robot_data_provider.proto \
  protos/elements.proto \
  /usr/include/google/protobuf/empty.proto \
  /usr/include/google/protobuf/timestamp.proto

if [ $? -ne 0 ]; then
    echo ""
    echo "❌ 代码生成失败"
    exit 1
fi

echo ""
echo "✓ 代码生成完成"
echo ""

# 列出生成的文件
echo "📄 生成的文件:"
ls -lh lib/generated/*.dart | awk '{print "   " $9 " (" $5 ")"}'

echo ""
echo "🔍 运行分析检查..."
flutter analyze lib/generated/site_health.pb.dart

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 所有检查通过！"
else
    echo ""
    echo "⚠️  发现一些警告，但代码应该可以正常工作"
fi

echo ""
echo "🎉 完成！"
