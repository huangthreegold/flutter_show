# gRPC 实时数据集成说明

本应用已集成 gRPC 服务，用于获取场地健康监控系统的实时数据。

## 功能特性

### 1. 实时数据流
应用通过 gRPC 持续接收以下实时数据：

- **实时告警数据** - 自动更新的异常警报（每5秒）
- **实时车辆状态** - 所有 AGV 车辆的当前状态（每3秒）
- **实时指标数据** - 关键性能指标（每2秒）
  - 正常车辆数量
  - 异常车辆数量
  - 二维码异常点数量
  - 地面异常路段数量

### 2. 集成页面

#### 概览页面 (OverviewPage)
- 显示 gRPC 连接状态指示器
- 实时更新的关键指标卡片
- 实时异常警报流，带有 "LIVE" 标识
- 所有数据通过 `StreamBuilder` 自动更新

#### 车辆状态页面 (VehicleStatusPage)
- 实时显示所有车辆的当前状态
- 支持筛选功能（全部/正常/异常/警告）
- 自动更新车辆健康度、位置和异常信息

## 技术实现

### gRPC 服务初始化

```dart
// 在 _SiteHealthDashboardState 初始化
_grpcService = SiteHealthGrpcService();
await _grpcService.connect('localhost', 50051);
```

### 连接配置

当前配置连接到本地 gRPC 服务器：
- **主机**: localhost
- **端口**: 50051
- **连接方式**: 不安全连接 (insecure)

要连接到生产服务器，修改 `main.dart` 中的连接参数：

```dart
// 修改为你的实际服务器地址
_grpcService.connect('your-server-address', 50051);
```

### 数据流订阅

所有页面都使用 Flutter 的 `StreamBuilder` 来订阅和显示实时数据：

```dart
StreamBuilder<Map<String, int>>(
  stream: grpcService.getRealtimeMetrics(),
  builder: (context, snapshot) {
    final metrics = snapshot.data ?? defaultMetrics;
    return YourWidget(metrics);
  },
)
```

## 模拟数据模式

如果 gRPC 服务器不可用，应用会自动切换到模拟数据模式：

- 界面顶部会显示橙色的连接状态提示："gRPC 未连接 (使用模拟数据)"
- 所有数据流仍然正常工作，使用模拟数据生成器
- 模拟数据会随时间变化，模拟真实的数据流

## 配置 gRPC 服务器

### 开发环境

1. 确保已安装必要的依赖：
   ```yaml
   dependencies:
     grpc: ^4.0.1
     protobuf: ^3.1.0
   ```

2. 运行 `flutter pub get` 安装依赖

3. 启动 gRPC 服务器（示例）：
   ```bash
   # 如果有 gRPC 服务器
   ./your-grpc-server --port=50051
   ```

### 生产环境

1. 更新服务器地址和端口
2. 配置 TLS 证书（推荐）：
   ```dart
   _channel = ClientChannel(
     'your-server.com',
     port: 443,
     options: const ChannelOptions(
       credentials: ChannelCredentials.secure(),
     ),
   );
   ```

## 自定义数据结构

### VehicleStatusData 模型

```dart
class VehicleStatusData {
  final String id;          // 车辆编号
  final String status;      // 状态：运行中/异常/警告
  final String condition;   // 条件描述
  final int healthScore;    // 健康度 0-100
  final String location;    // 当前位置
  final String exception;   // 异常代码
}
```

### 告警数据格式

```dart
{
  'time': '14:32',                // 时间
  'type': '地面不平',              // 异常类型
  'location': '路径P-12',          // 位置
  'vehicles': 'AGV-03, AGV-07',   // 涉及车辆
  'level': 'high',                // 严重等级: high/medium/low
}
```

### 指标数据格式

```dart
{
  'normalVehicles': 12,      // 正常车辆数
  'abnormalVehicles': 3,     // 异常车辆数
  'qrCodeAnomalies': 8,      // 二维码异常点数
  'groundAnomalies': 3,      // 地面异常路段数
}
```

## 调试和监控

### 查看 gRPC 日志

gRPC 服务会在控制台输出连接状态：

```
gRPC连接已建立: localhost:50051
gRPC未连接，使用模拟数据
gRPC连接已关闭
```

### 连接状态指示器

应用顶部会显示当前连接状态：
- 🟢 绿色 "gRPC 已连接" - 成功连接到服务器
- 🟠 橙色 "gRPC 未连接 (使用模拟数据)" - 使用模拟数据模式

## 故障排除

### 连接失败
- 检查服务器地址和端口是否正确
- 确认服务器正在运行
- 检查防火墙设置
- 查看控制台错误日志

### 数据不更新
- 检查 gRPC 连接状态
- 确认服务器正在发送数据流
- 重启应用重新建立连接

### 性能问题
- 调整数据更新频率（修改 `Duration` 参数）
- 考虑添加数据缓存
- 优化 UI 重绘逻辑

## 下一步扩展

1. **实现真实 gRPC 协议**
   - 定义 `.proto` 文件
   - 生成 Dart 客户端代码
   - 替换模拟数据生成器

2. **添加身份验证**
   - JWT token 认证
   - mTLS 双向认证

3. **错误处理和重连**
   - 自动重连机制
   - 指数退避策略
   - 错误通知

4. **数据持久化**
   - 离线数据缓存
   - 历史数据查询

## 相关文件

- `lib/main.dart` - 主应用和 UI 集成
- `lib/site_health_grpc_service.dart` - gRPC 服务实现
- `pubspec.yaml` - 依赖配置

## 联系支持

如有问题或建议，请查看项目文档或联系开发团队。
