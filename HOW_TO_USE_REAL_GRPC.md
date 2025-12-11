# 🚀 使用真实 gRPC 数据的快速指南

## ✅ 已完成的配置

你的 Flutter 应用现在已经配置为使用**真实的 gRPC 服务**！

## 📝 配置服务器地址

### 方法 1: 修改配置文件（推荐）

编辑 `lib/grpc_config.dart` 文件：

```dart
class GrpcConfig {
  // 修改为你的服务器地址
  static const String host = 'localhost';  // 或 '192.168.1.100' 或域名
  static const int port = 50051;           // 你的服务器端口
}
```

### 方法 2: 直接修改连接代码

编辑 `lib/main.dart` 中的 `_connectToServer()` 方法：

```dart
await _grpcService.connect('your-server-ip', 50051);
```

## 🎯 切换数据源

### 当前配置：使用真实 gRPC

```dart
// lib/main.dart 第 5-7 行
import 'site_health_real_grpc_service.dart';  // ✅ 真实 gRPC（当前）
// import 'site_health_grpc_service.dart';   // ❌ 模拟数据（已禁用）
```

### 如需切换回模拟数据

在 `lib/main.dart` 中修改导入：

```dart
// import 'site_health_real_grpc_service.dart';  // ❌ 禁用真实 gRPC
import 'site_health_grpc_service.dart';          // ✅ 启用模拟数据
```

然后修改服务类型：

```dart
// 第 44 行
late final SiteHealthGrpcService _grpcService;  // 模拟数据

// 第 53 行
_grpcService = SiteHealthGrpcService();  // 模拟数据

// 第 353 和 1311 行（OverviewPage 和 VehicleStatusPage）
final SiteHealthGrpcService grpcService;  // 模拟数据
```

## 🖥️ 运行应用

### 1. 启动 gRPC 服务器

确保你的 gRPC 服务器正在运行：

```bash
# 示例（根据你的服务器实现）
python grpc_server.py
# 或
./your_grpc_server
```

### 2. 运行 Flutter 应用

```bash
# Linux
flutter run -d linux

# Windows
flutter run -d windows

# macOS
flutter run -d macos

# Web
flutter run -d chrome

# Android
flutter run -d android

# iOS
flutter run -d ios
```

## 📊 连接状态指示

应用启动后，你会在右上角看到连接状态图标：

- 🔄 **旋转圆圈**: 正在连接...
- ✅ **绿色云图标**: 已连接到 gRPC 服务器
- ❌ **红色云图标**: 连接失败

点击状态图标可以查看详细信息和重新连接。

## 🔧 故障排查

### 连接失败？

1. **检查服务器是否运行**
   ```bash
   # 检查端口是否监听
   netstat -an | grep 50051
   # 或
   lsof -i :50051
   ```

2. **检查防火墙设置**
   - 确保端口 50051 未被防火墙阻止
   
3. **检查服务器地址**
   - 本地开发用 `localhost` 或 `127.0.0.1`
   - 远程服务器使用实际 IP 地址

4. **查看日志**
   - Flutter 控制台会显示连接状态
   - 应用会显示错误提示消息

### 数据未更新？

1. **确认连接成功**
   - 查看右上角是否显示绿色云图标
   
2. **检查服务端实现**
   - 确保服务端实现了所有 proto 定义的方法
   - 查看服务端日志

3. **重启应用**
   - 有时需要完全重启应用

## 📱 功能说明

### 实时数据流

应用会自动从 gRPC 服务器获取：

- **实时指标**: 每 2 秒更新一次
  - 正常车辆数
  - 异常车辆数
  - 二维码异常数
  - 地面异常数

- **实时车辆状态**: 每 3 秒更新一次
  - 车辆列表
  - 健康分数
  - 位置信息
  - 异常状态

- **实时告警**: 服务器推送
  - 新的异常告警
  - 严重程度分级

### 连接管理

- **自动连接**: 应用启动时自动连接
- **连接状态**: 实时显示连接状态
- **重新连接**: 连接失败后可手动重连
- **优雅断开**: 应用退出时自动断开连接

## 🎓 开发建议

### 开发阶段

使用**模拟数据**进行 UI 开发和测试：

```dart
import 'site_health_grpc_service.dart';  // 模拟数据
```

优点：
- 无需运行服务器
- 数据稳定可预测
- 开发速度快

### 集成测试

使用**真实 gRPC** 进行集成测试：

```dart
import 'site_health_real_grpc_service.dart';  // 真实 gRPC
```

优点：
- 验证服务端集成
- 测试真实数据场景
- 发现潜在问题

### 生产部署

使用**真实 gRPC** 并配置生产服务器地址：

```dart
// lib/grpc_config.dart
static const String host = 'api.production.com';
static const int port = 50051;
static const bool useSecure = true;  // 生产环境使用 TLS
```

## 📚 相关文档

- 📖 [gRPC 客户端使用指南](GRPC_CLIENT_GUIDE.md)
- 💻 [完整示例代码](lib/main_with_real_grpc_example.dart)
- 🧪 [测试用例](test/grpc_client_test.dart)
- ⚙️ [服务器配置](lib/grpc_config.dart)

## ✨ 总结

现在你的应用已经配置完成，可以：

1. ✅ 使用真实 gRPC 服务
2. ✅ 显示连接状态
3. ✅ 自动重连
4. ✅ 实时数据更新
5. ✅ 灵活切换数据源

只需确保 gRPC 服务器运行在 `localhost:50051`（或你配置的地址），然后启动应用即可！🎉
