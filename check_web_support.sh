#!/bin/bash

# 测试 Web 支持配置
# 检查所有必要的文件和配置是否正确

echo "🔍 检查 Flutter Web gRPC 支持配置"
echo "====================================="
echo ""

# 颜色定义
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

passed=0
failed=0

# 检查函数
check() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✓${NC} $2"
        ((passed++))
    else
        echo -e "${RED}✗${NC} $2"
        ((failed++))
    fi
}

# 1. 检查 Flutter
echo "📦 检查依赖..."
flutter --version > /dev/null 2>&1
check $? "Flutter 已安装"

# 2. 检查 Docker
docker --version > /dev/null 2>&1
check $? "Docker 已安装"

# 3. 检查必要文件
echo ""
echo "📁 检查文件..."

[ -f "pubspec.yaml" ]
check $? "pubspec.yaml 存在"

[ -f "lib/grpc_config.dart" ]
check $? "lib/grpc_config.dart 存在"

[ -f "lib/site_health_grpc_client_platform.dart" ]
check $? "lib/site_health_grpc_client_platform.dart 存在"

[ -f "envoy.yaml" ]
check $? "envoy.yaml 存在"

[ -d "web" ]
check $? "web 目录存在"

[ -f "web/index.html" ]
check $? "web/index.html 存在"

# 4. 检查依赖配置
echo ""
echo "🔧 检查 pubspec.yaml 配置..."

grep -q "flutter_web_plugins:" pubspec.yaml
check $? "flutter_web_plugins 已配置"

grep -q "grpc:" pubspec.yaml
check $? "grpc 依赖已配置"

# 5. 检查 Web 平台启用
echo ""
echo "🌐 检查 Flutter Web 平台..."

flutter devices | grep -q "Chrome"
check $? "Chrome 浏览器可用"

# 6. 检查 Envoy 配置
echo ""
echo "⚙️ 检查 Envoy 配置..."

grep -q "grpc_web" envoy.yaml
check $? "Envoy gRPC-Web 过滤器已配置"

grep -q "cors" envoy.yaml
check $? "CORS 已配置"

grep -q "8080" envoy.yaml
check $? "端口 8080 已配置"

# 7. 检查 gRPC 服务器
echo ""
echo "🔌 检查 gRPC 服务器..."

nc -z localhost 50051 2>/dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓${NC} gRPC 服务器正在运行 (localhost:50051)"
    ((passed++))
else
    echo -e "${YELLOW}⚠${NC} gRPC 服务器未运行 (localhost:50051)"
    echo "  提示: 启动服务器: python grpc_server_example.py"
fi

# 8. 检查 Envoy 代理
echo ""
echo "🚪 检查 Envoy 代理..."

if docker ps | grep -q "envoy-grpc-web"; then
    echo -e "${GREEN}✓${NC} Envoy 代理正在运行"
    ((passed++))
else
    echo -e "${YELLOW}⚠${NC} Envoy 代理未运行"
    echo "  提示: 启动代理: ./start_web.sh"
fi

# 总结
echo ""
echo "====================================="
echo "测试结果: ${GREEN}${passed} 通过${NC}, ${RED}${failed} 失败${NC}"
echo ""

if [ $failed -eq 0 ]; then
    echo -e "${GREEN}✓ 所有检查通过！可以运行 Web 版本了。${NC}"
    echo ""
    echo "运行命令："
    echo "  ./start_web.sh    # 一键启动（推荐）"
    echo "  或"
    echo "  flutter run -d chrome"
    exit 0
else
    echo -e "${YELLOW}⚠ 有些检查失败，请先修复问题。${NC}"
    exit 1
fi
