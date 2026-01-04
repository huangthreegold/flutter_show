# Flutter Web gRPC 支持总结

## ✅ 已完成的工作

### 1. 添加 Web 平台支持

- ✅ 添加 `flutter_web_plugins` 依赖
- ✅ 保留 Web 目录结构 (`web/index.html`, `manifest.json` 等)
- ✅ 创建跨平台 gRPC 客户端 `SiteHealthGrpcClientPlatform`

### 2. gRPC-Web 配置

- ✅ 创建 Envoy 代理配置文件 (`envoy.yaml`)
- ✅ 配置 CORS 支持
- ✅ 端口映射：Web 使用 8080，原生使用 50051

### 3. 代码改造

**新增文件**:
- `lib/site_health_grpc_client_platform.dart` - 跨平台 gRPC 客户端
- `lib/main_web_compatible.dart` - Web 兼容的主程序示例
- `envoy.yaml` - Envoy 代理配置
- `start_web.sh` - Web 版本快速启动脚本
- `WEB_GRPC_SETUP.md` - 详细的 Web 设置指南

**修改文件**:
- `lib/grpc_config.dart` - 添加 Web 平台配置支持
- `pubspec.yaml` - 添加 Web 相关依赖

### 4. 平台自动检测

客户端会自动识别运行平台：
```dart
import 'package:flutter/foundation.dart' show kIsWeb;

if (kIsWeb) {
  // 使用 gRPC-Web (HTTP 代理)
} else {
  // 使用原生 gRPC
}
```

## 🚀 如何运行

### 方法 1: 使用启动脚本（推荐）

```bash
./start_web.sh
```

这会自动：
1. 启动 Envoy gRPC-Web 代理（Docker）
2. 检查 gRPC 服务器状态
3. 启动 Flutter Web 应用

### 方法 2: 手动启动

#### 步骤 1: 启动 Envoy 代理

```bash
docker run -d --name envoy-grpc-web \
  -p 8080:8080 \
  -v "$(pwd)/envoy.yaml:/etc/envoy/envoy.yaml:ro" \
  --add-host=host.docker.internal:host-gateway \
  envoyproxy/envoy:v1.28-latest
```

#### 步骤 2: 启动 gRPC 服务器

```bash
python grpc_server_example.py
```

#### 步骤 3: 运行 Flutter Web

```bash
flutter run -d chrome
```

## 📋 架构说明

### 原生平台 (Android/iOS/Linux/macOS/Windows)

```
Flutter App → gRPC (HTTP/2) → gRPC Server (port 50051)
```

### Web 平台

```
Flutter Web App → gRPC-Web (HTTP/1.1) → Envoy Proxy (port 8080) 
                                         ↓
                                      gRPC Server (port 50051)
```

## 🔧 配置说明

### 开发环境配置

在 `lib/grpc_config.dart`:

```dart
class GrpcConfig {
  static const String host = 'localhost';
  static const int port = 50051;        // 原生平台
  static const int webPort = 8080;      // Web 平台 (Envoy)
  static const bool useSecure = false;  // 开发环境不用 HTTPS
}
```

### 生产环境配置

```dart
class GrpcConfig {
  static const String host = 'api.yourcompany.com';
  static const int port = 50051;
  static const int webPort = 443;       // HTTPS
  static const bool useSecure = true;   // 生产环境使用 HTTPS
}
```

## 💻 代码使用示例

### 创建客户端并连接

```dart
import 'package:my_flutter_app/site_health_grpc_client_platform.dart';
import 'package:my_flutter_app/grpc_config.dart';

// 创建客户端（自动适配平台）
final client = SiteHealthGrpcClientPlatform();

// 连接（Web 用 8080，原生用 50051）
await client.connect(
  GrpcConfig.host,
  GrpcConfig.currentPort,
  useSecure: GrpcConfig.useSecure,
);

// 调用 gRPC 方法
final stats = await client.getHealthStatistics();
print('总节点: ${stats.totalNodes}');

// 断开连接
await client.disconnect();
```

### 实时数据流

```dart
// 订阅健康状态更新
final stream = client.subscribeHealthStatus();

stream.listen(
  (update) {
    print('场地 ${update.siteId} 状态更新');
  },
  onError: (error) => print('错误: $error'),
);
```

## 🐛 常见问题

### 1. Web 版本连接失败

**错误**: `Connection refused`

**原因**: Envoy 代理未运行

**解决方案**:
```bash
# 检查 Envoy 是否运行
docker ps | grep envoy-grpc-web

# 如果没有运行，启动它
docker run -d --name envoy-grpc-web \
  -p 8080:8080 \
  -v "$(pwd)/envoy.yaml:/etc/envoy/envoy.yaml:ro" \
  --add-host=host.docker.internal:host-gateway \
  envoyproxy/envoy:v1.28-latest
```

### 2. CORS 错误

**错误**: `Access-Control-Allow-Origin`

**原因**: Envoy CORS 配置问题

**解决方案**: 检查 `envoy.yaml` 中的 CORS 配置是否正确

### 3. 原生平台仍然工作吗？

是的！代码完全向后兼容，原生平台（Android/iOS/Linux/macOS/Windows）可以直接连接到 gRPC 服务器，不需要 Envoy 代理。

### 4. 需要修改 proto 文件吗？

不需要。proto 文件保持不变，只是传输协议层面的差异由客户端自动处理。

## 📦 依赖项

### 必需依赖

- `grpc: ^4.0.1` - gRPC 客户端
- `protobuf: ^3.1.0` - Protocol Buffers
- `flutter_web_plugins` - Web 平台支持

### 外部依赖

- **Docker** - 用于运行 Envoy 代理
- **Envoy** - gRPC-Web 代理（或者 Nginx 1.13.10+）

## 🚢 部署建议

### 开发环境

使用 Docker 运行 Envoy 代理（如上所示）

### 生产环境

选项 1: 在 Kubernetes 中部署 Envoy 作为 Sidecar

选项 2: 使用 Nginx 作为 gRPC-Web 代理

选项 3: 使用云服务提供商的负载均衡器（如 Google Cloud Load Balancer，支持 gRPC-Web）

## 📚 相关文档

- [WEB_GRPC_SETUP.md](WEB_GRPC_SETUP.md) - 详细的 Web 设置指南
- [GRPC_SETUP_GUIDE.md](GRPC_SETUP_GUIDE.md) - 原生 gRPC 设置
- [QUICKSTART.md](QUICKSTART.md) - 快速开始指南

## 🎯 下一步

1. **测试 Web 版本**: 运行 `./start_web.sh` 测试所有功能
2. **更新主程序**: 如果需要，将 `main_web_compatible.dart` 的改动合并到 `main.dart`
3. **配置生产环境**: 修改 `grpc_config.dart` 用于生产部署
4. **添加错误处理**: 增强网络错误和超时处理

## ✨ 优点

- ✅ **跨平台**: 一套代码，多个平台
- ✅ **自动适配**: 代码自动检测运行平台
- ✅ **向后兼容**: 不影响现有的原生平台代码
- ✅ **易于部署**: 使用标准的 gRPC-Web 代理

## 📞 支持

遇到问题？查看：
1. 浏览器开发者工具的控制台
2. Envoy 日志: `docker logs envoy-grpc-web`
3. gRPC 服务器日志
4. [WEB_GRPC_SETUP.md](WEB_GRPC_SETUP.md) 故障排查部分
