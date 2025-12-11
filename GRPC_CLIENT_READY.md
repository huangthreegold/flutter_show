# ✅ gRPC 客户端创建完成

## 📦 已完成的工作

### 1. 代码生成 ✓
- ✅ 从 `.proto` 文件生成 Dart gRPC 客户端代码
- ✅ 生成位置：`lib/generated/`
- ✅ 包含所有必要的类型和服务定义

### 2. 客户端实现 ✓
- ✅ 创建 `SiteHealthRealGrpcService` 类 (`lib/site_health_real_grpc_service.dart`)
- ✅ 实现连接管理（connect/disconnect）
- ✅ 实现核心 API 方法：
  - `getHealthStatistics()` - 获取健康统计
  - `subscribeHealthStatus()` - 订阅实时健康状态
  - `queryHealthInfo()` - 查询历史数据
  - `getRealtimeMetrics()` - 实时指标流
  - `getRealtimeVehicleStatus()` - 实时车辆状态流
  - `getRealtimeAlerts()` - 实时告警流

### 3. 数据转换 ✓
- ✅ Proto 消息 → UI 友好格式
- ✅ 自动转换健康统计为前端指标
- ✅ 自动转换为车辆状态列表
- ✅ 自动转换为告警Map

### 4. 文档和示例 ✓
- ✅ 使用指南：`GRPC_CLIENT_GUIDE.md`
- ✅ 完整示例：`lib/main_with_real_grpc_example.dart`
- ✅ 测试用例：`test/grpc_client_test.dart`

## 🚀 快速使用

### 基础用法

```dart
import 'package:my_flutter_app/site_health_real_grpc_service.dart';

// 1. 创建客户端
final grpcClient = SiteHealthRealGrpcService();

// 2. 连接服务器（替换为实际服务器地址）
await grpcClient.connect('your-server-ip', 50051);

// 3. 获取数据
final stats = await grpcClient.getHealthStatistics();
print('总节点: ${stats.totalNodes}');

// 4. 监听实时数据
grpcClient.getRealtimeMetrics().listen((metrics) {
  print('正常车辆: ${metrics['normalVehicles']}');
});

// 5. 断开连接
await grpcClient.disconnect();
```

### 在 Flutter 应用中使用

修改 `lib/main.dart`：

```dart
// 替换导入
import 'site_health_real_grpc_service.dart';  // 使用真实 gRPC

// 在 State 中
late final SiteHealthRealGrpcService _grpcService;

@override
void initState() {
  super.initState();
  _grpcService = SiteHealthRealGrpcService();
  
  // 连接到你的服务器
  _grpcService.connect('your-server-ip', 50051).catchError((error) {
    print('连接失败: $error');
  });
}
```

## 📝 服务端要求

你的后端 gRPC 服务需要实现以下接口（定义在 `protos/site_health.proto`）：

```protobuf
service SiteHealthService {
  rpc GetHealthStatistics(google.protobuf.Empty) returns (HealthStatistics);
  rpc SubscribeHealthStatus(google.protobuf.Empty) returns (stream SiteHealthInfo);
  rpc QueryHealthInfo(HealthInfoQueryRequest) returns (HealthInfoQueryResponse);
  rpc AnalyzeLocationException(LocationExceptionAnalysisRequest) returns (LocationExceptionAnalysisResponse);
  rpc AnalyzeCarException(CarExceptionAnalysisRequest) returns (CarExceptionAnalysisResponse);
  rpc CleanupData(DataCleanupRequest) returns (DataCleanupResponse);
  rpc GetCarLocationStats(CarLocationStatsRequest) returns (CarLocationStatsResponse);
}
```

## 🔧 配置服务器地址

在连接时指定你的服务器地址和端口：

```dart
// 本地开发
await grpcClient.connect('localhost', 50051);

// 远程服务器
await grpcClient.connect('192.168.1.100', 50051);

// 域名
await grpcClient.connect('api.yourcompany.com', 50051);
```

## 🧪 测试连接

运行测试（确保服务器正在运行）：

```bash
flutter test test/grpc_client_test.dart
```

## 📂 文件结构

```
lib/
├── site_health_real_grpc_service.dart  # 真实 gRPC 客户端 ⭐
├── site_health_grpc_service.dart       # 模拟数据服务（开发用）
├── main_with_real_grpc_example.dart    # 完整使用示例 ⭐
└── generated/                           # 生成的代码
    ├── site_health.pb.dart
    ├── site_health.pbgrpc.dart
    ├── site_health.pbenum.dart
    └── google/protobuf/
        ├── empty.pb.dart
        └── timestamp.pb.dart

protos/
├── site_health.proto       # 服务定义 ⭐
├── types.proto
└── ...

test/
└── grpc_client_test.dart   # 测试用例 ⭐
```

## ✨ 特性

- ✅ **类型安全**: 使用 Protocol Buffers 确保类型安全
- ✅ **实时数据**: 支持流式数据推送
- ✅ **自动重连**: 连接失败时可重新连接
- ✅ **错误处理**: 完善的错误处理和日志
- ✅ **数据转换**: 自动转换为 UI 友好格式
- ✅ **状态管理**: 连接状态监控
- ✅ **灵活切换**: 可在模拟数据和真实数据间切换

## 🐛 调试

### 查看日志

客户端会打印详细日志：
```
✓ gRPC 连接成功: localhost:50051
✓ 获取健康统计成功: 总节点 150
✓ 开始订阅健康状态变化
```

### 检查连接

```dart
if (grpcClient.isConnected) {
  print('已连接');
} else {
  print('未连接');
}
```

### 常见错误

1. **Connection timeout**
   - 检查服务器地址和端口
   - 确认服务器正在运行
   - 检查防火墙设置

2. **No such method**
   - 确认服务端实现了所有 proto 方法
   - 检查 proto 版本是否同步

3. **Type mismatch**
   - 重新生成代码
   - 确保前后端 proto 文件一致

## 📚 相关文档

- 📖 [完整使用指南](GRPC_CLIENT_GUIDE.md)
- 💻 [示例代码](lib/main_with_real_grpc_example.dart)
- 🧪 [测试用例](test/grpc_client_test.dart)
- 📋 [Proto 定义](protos/site_health.proto)

## 🎯 下一步

1. **配置服务器地址**: 在代码中设置正确的服务器IP和端口
2. **启动服务器**: 确保后端 gRPC 服务正在运行
3. **测试连接**: 运行应用或测试用例验证连接
4. **集成到UI**: 使用 `main_with_real_grpc_example.dart` 作为参考集成到你的应用

## 💡 提示

- 开发时可以使用 `SiteHealthGrpcService`（模拟数据）
- 生产环境切换到 `SiteHealthRealGrpcService`（真实 gRPC）
- 两种服务接口兼容，切换方便

---

**状态**: ✅ 所有组件已就绪，可以开始使用！

**需要帮助？** 查看 [GRPC_CLIENT_GUIDE.md](GRPC_CLIENT_GUIDE.md) 获取详细说明。
