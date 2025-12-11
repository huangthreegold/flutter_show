# gRPC 客户端使用指南

## 📋 概述

本项目现在支持真实的 gRPC 通信！我们已经生成了客户端代码，可以连接到后端服务并获取真实数据。

## 🚀 快速开始

### 1. 生成的文件

已成功生成以下 gRPC 代码：

```
lib/generated/
├── site_health.pb.dart          # Protocol Buffer 消息定义
├── site_health.pbgrpc.dart      # gRPC 服务客户端
├── site_health.pbenum.dart      # 枚举类型
├── types.pb.dart                # 基础类型定义
├── google/protobuf/
│   ├── empty.pb.dart            # Empty 消息
│   └── timestamp.pb.dart        # Timestamp 消息
└── ... (其他生成的文件)
```

### 2. 真实 gRPC 客户端

新创建的 `lib/site_health_real_grpc_service.dart` 提供完整的 gRPC 客户端实现：

```dart
import 'package:my_flutter_app/site_health_real_grpc_service.dart';

// 创建客户端
final grpcClient = SiteHealthRealGrpcService();

// 连接到服务器
await grpcClient.connect('your-server-host', 50051);

// 获取健康统计
final stats = await grpcClient.getHealthStatistics();

// 订阅实时更新
grpcClient.subscribeHealthStatus().listen((healthInfo) {
  print('收到健康信息更新: $healthInfo');
});

// 获取实时指标流（用于 UI）
grpcClient.getRealtimeMetrics().listen((metrics) {
  print('正常车辆: ${metrics['normalVehicles']}');
  print('异常车辆: ${metrics['abnormalVehicles']}');
});

// 获取实时车辆状态
grpcClient.getRealtimeVehicleStatus().listen((vehicles) {
  for (var vehicle in vehicles) {
    print('${vehicle.id}: ${vehicle.status}');
  }
});

// 断开连接
await grpcClient.disconnect();
```

### 3. 切换到真实 gRPC

要在 Flutter 应用中使用真实的 gRPC 而非模拟数据，请修改 `lib/main.dart`:

**修改前（使用模拟数据）：**
```dart
import 'site_health_grpc_service.dart';  // 模拟服务

_grpcService = SiteHealthGrpcService();
```

**修改后（使用真实 gRPC）：**
```dart
import 'site_health_real_grpc_service.dart';  // 真实 gRPC 服务

_grpcService = SiteHealthRealGrpcService();
```

然后更新连接地址：
```dart
// 连接到真实服务器
_grpcService.connect('your-server-ip', 50051).catchError((error) {
  print('gRPC 连接失败: $error');
});
```

## 🔧 服务端要求

你的后端服务需要实现 `protos/site_health.proto` 中定义的 gRPC 服务：

```protobuf
service SiteHealthService {
  // 获取健康统计信息
  rpc GetHealthStatistics(google.protobuf.Empty) returns (HealthStatistics);
  
  // 订阅健康状态变化（流式）
  rpc SubscribeHealthStatus(google.protobuf.Empty) returns (stream SiteHealthInfo);
  
  // 查询健康信息
  rpc QueryHealthInfo(HealthInfoQueryRequest) returns (HealthInfoQueryResponse);
  
  // 其他接口...
}
```

## 📦 关键功能

### 1. 实时数据流

客户端提供三种实时数据流：

- **实时指标** (`getRealtimeMetrics()`): 每 2 秒更新一次统计数据
- **实时车辆状态** (`getRealtimeVehicleStatus()`): 每 3 秒更新一次车辆信息
- **实时告警** (`getRealtimeAlerts()`): 从服务端流式推送异常告警

### 2. 查询和分析

- `queryHealthInfo()`: 查询历史健康数据
- `analyzeLocationException()`: 分析特定位置的异常概率（判断是否为场地问题）
- `analyzeCarException()`: 分析单车异常概率（判断是否为车辆问题）
- `getCarLocationStats()`: 获取车辆在特定位置的统计信息

### 3. 数据转换

客户端自动将 Protocol Buffer 消息转换为 UI 友好的格式：

- `pb.HealthStatistics` → `Map<String, int>` (用于概览页面)
- `pb.CarExceptionSummary` → `VehicleStatusData` (用于车辆状态页面)
- `pb.MarkerHealthInfo` → 告警Map (用于告警列表)

## 🔄 重新生成代码

如果修改了 `.proto` 文件，重新生成代码：

```bash
export PATH="$PATH:$HOME/.pub-cache/bin"
cd /home/threegold/hxx/flutter/site_health/my_flutter_app

# 生成所有 proto 文件
protoc --dart_out=grpc:lib/generated \
  -Iprotos \
  --proto_path=/usr/include \
  protos/site_health.proto \
  protos/types.proto \
  protos/central_map_service.proto \
  protos/get_marker_data.proto \
  protos/robot_data_provider.proto \
  protos/elements.proto \
  google/protobuf/empty.proto \
  google/protobuf/timestamp.proto
```

## 🐛 调试

### 检查连接状态
```dart
if (grpcClient.isConnected) {
  print('gRPC 已连接');
} else {
  print('gRPC 未连接');
}
```

### 查看日志
客户端会打印详细的日志信息：
- `✓` 表示成功
- `✗` 表示失败
- `⚠️` 表示警告

### 常见问题

1. **连接超时**
   - 检查服务器地址和端口是否正确
   - 确认服务器正在运行
   - 检查防火墙设置

2. **No such method**
   - 确认服务端实现了 proto 中定义的所有方法
   - 检查 proto 版本是否匹配

3. **类型不匹配**
   - 重新生成客户端代码
   - 确保 proto 文件同步

## 📝 API 接口对照

| 前端方法 | gRPC 方法 | 说明 |
|---------|----------|------|
| `getRealtimeMetrics()` | `GetHealthStatistics()` | 定时拉取统计数据 |
| `getRealtimeVehicleStatus()` | `GetHealthStatistics()` | 定时拉取并转换为车辆列表 |
| `getRealtimeAlerts()` | `SubscribeHealthStatus()` | 订阅实时健康状态推送 |
| `queryHealthInfo()` | `QueryHealthInfo()` | 查询历史数据 |

## ✅ 下一步

1. **配置服务器地址**: 在 `main.dart` 中设置正确的服务器地址
2. **测试连接**: 运行应用并查看连接日志
3. **验证数据**: 确认从服务器接收到的数据正确显示
4. **错误处理**: 根据需要添加更多错误处理逻辑

## 🎯 完整示例

查看 `lib/site_health_real_grpc_service.dart` 中的完整实现示例。

---

**注意**: 模拟服务 `SiteHealthGrpcService` 仍然可用，适合开发和测试。生产环境请使用 `SiteHealthRealGrpcService`。
