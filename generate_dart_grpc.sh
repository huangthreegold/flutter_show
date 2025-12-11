#!/bin/bash

# 生成 Dart gRPC 代码的脚本
# 使用前需要安装: dart pub global activate protoc_plugin

echo "========================================"
echo "生成 Dart gRPC 代码"
echo "========================================"

# 检查 protoc 是否安装
if ! command -v protoc &> /dev/null; then
    echo "❌ protoc 未安装"
    echo "请安装 protobuf compiler:"
    echo "  Ubuntu/Debian: sudo apt-get install protobuf-compiler"
    echo "  macOS: brew install protobuf"
    exit 1
fi

# 检查 protoc-gen-dart 是否安装
if ! command -v protoc-gen-dart &> /dev/null; then
    echo "❌ protoc-gen-dart 未安装"
    echo "正在安装 protoc_plugin..."
    dart pub global activate protoc_plugin
    
    # 添加到 PATH
    export PATH="$PATH:$HOME/.pub-cache/bin"
    
    if ! command -v protoc-gen-dart &> /dev/null; then
        echo "❌ 安装失败，请手动运行:"
        echo "  dart pub global activate protoc_plugin"
        echo "  export PATH=\"\$PATH:\$HOME/.pub-cache/bin\""
        exit 1
    fi
fi

echo "✓ 工具检查完成"
echo ""

# 创建输出目录
mkdir -p lib/generated

# 生成 Dart 代码
echo "正在生成 Dart gRPC 代码..."
protoc \
  --dart_out=grpc:lib/generated \
  -I protos \
  protos/site_health.proto

if [ $? -eq 0 ]; then
    echo "✓ Dart 代码生成成功！"
    echo "  生成文件:"
    echo "  - lib/generated/site_health.pb.dart"
    echo "  - lib/generated/site_health.pbenum.dart"
    echo "  - lib/generated/site_health.pbgrpc.dart"
    echo "  - lib/generated/site_health.pbjson.dart"
else
    echo "❌ 生成失败"
    exit 1
fi

echo ""
echo "========================================"
echo "完成！"
echo "========================================"
