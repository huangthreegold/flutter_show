# 快速启动指南

## 运行 Flutter 应用并使用 gRPC 实时数据

### 方法 1: 使用模拟数据模式（推荐用于开发）

直接运行应用即可，gRPC 服务会自动使用内置的模拟数据生成器。

```powershell
# 在项目根目录执行
flutter run
```

应用会显示：
- 🟠 "gRPC 未连接 (使用模拟数据)"
- 所有数据都会实时更新（模拟数据）

### 方法 2: 连接真实的 gRPC 服务器

#### 步骤 1: 安装依赖

```powershell
flutter pub get
```

#### 步骤 2: 配置服务器地址

编辑 `lib/main.dart`，找到第 36 行左右：

```dart
// 修改这里的地址和端口
_grpcService.connect('localhost', 50051)
```

改为你的服务器地址：

```dart
_grpcService.connect('your-server-ip', 50051)
```

#### 步骤 3: 启动 gRPC 服务器

如果你有 gRPC 服务器，启动它：

```bash
# 示例
./your-grpc-server --port=50051
```

或使用提供的 Python 示例（需要先实现完整的 proto 定义）：

```bash
python grpc_server_example.py
```

#### 步骤 4: 运行 Flutter 应用

```powershell
flutter run
```

成功连接后会显示：
- 🟢 "gRPC 已连接"
- 实时数据来自你的服务器

## 查看实时数据效果

### 1. 概览页面 (Overview)
- 关键指标每 2 秒更新一次
- 实时告警每 5 秒推送一次
- 观察数字和告警的动态变化

### 2. 车辆状态页面 (Vehicle Status)
- 所有车辆状态每 3 秒刷新
- 健康度、位置实时更新
- 可以使用筛选器查看不同状态的车辆

## 调试提示

### 查看 gRPC 连接日志

运行应用后，在控制台会看到：

```
flutter: gRPC连接已建立: localhost:50051
```

或

```
flutter: gRPC连接失败: ..., 将使用模拟数据
```

### 热重载测试

修改代码后，使用热重载：

```
按 r 键 - 热重载
按 R 键 - 完全重启
按 q 键 - 退出
```

### 模拟不同的网络条件

1. **断开连接测试**：关闭 gRPC 服务器
2. **重连测试**：重新启动服务器，观察应用行为
3. **数据延迟测试**：调整服务器的发送频率

## 性能监控

### 在 Flutter DevTools 中查看

```powershell
# 启动应用时自动打开 DevTools
flutter run --devtools
```

关注：
- 内存使用（StreamBuilder 是否正确关闭）
- CPU 使用（UI 重绘频率）
- 网络流量（gRPC 数据大小）

## 常见问题

### Q: 为什么显示"使用模拟数据"？
A: gRPC 服务器未连接或连接失败。应用会自动切换到模拟模式，功能正常。

### Q: 如何修改数据更新频率？
A: 编辑 `lib/site_health_grpc_service.dart`，修改 `Duration` 参数：

```dart
await Future.delayed(const Duration(seconds: 5));  // 修改这里的秒数
```

### Q: 数据不更新怎么办？
A: 
1. 检查 StreamBuilder 是否正确设置
2. 重启应用（按 R 键）
3. 查看控制台错误日志

### Q: 如何添加新的数据流？
A: 
1. 在 `SiteHealthGrpcService` 中添加新方法
2. 返回 `Stream<YourDataType>`
3. 在 UI 中使用 `StreamBuilder` 订阅

## 下一步

查看完整文档：
- `README_GRPC.md` - gRPC 集成详细说明
- `lib/site_health_grpc_service.dart` - 服务实现代码
- `grpc_server_example.py` - 服务器示例代码

## 生产部署建议

1. **使用 TLS/SSL**
   ```dart
   credentials: ChannelCredentials.secure()
   ```

2. **添加错误处理和重连机制**

3. **配置合理的超时时间**

4. **实现数据缓存策略**

5. **监控和日志收集**

---

祝开发顺利！如有问题，请查看 `README_GRPC.md` 或联系技术支持。
