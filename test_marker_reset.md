# 二维码重置功能测试指南

## 功能概述

已在地图组件中添加了二维码重置功能。当点击地图上的二维码查看详细信息时，如果该二维码状态不是正常（normal），会显示一个"重置为正常"按钮。

## 实现的功能

### 1. 后端 gRPC 服务方法
在 `SiteHealthRealGrpcService` 中添加了 `resetLocationHealthData` 方法：

```dart
Future<pb.DataCleanupResponse> resetLocationHealthData({
  Int64? nodeId,
  types.PositionData_t? logicLocation,
})
```

该方法调用 proto 文件中定义的 `ResetLocationHealthData` RPC 接口。

### 2. 前端 UI 功能
在 `MarkerPositionMap` 组件中：
- 点击地图上的二维码点会弹出详细信息对话框
- 如果二维码状态不是正常（警告/错误/严重），会显示"重置为正常"按钮
- 点击按钮后会弹出确认对话框
- 确认后调用 gRPC 服务重置该位置的健康数据
- 重置成功后显示提示消息并关闭对话框

### 3. 组件传递
`MarkerMapHomePage` 现在会将 `grpcService` 传递给 `MarkerPositionMap` 组件：

```dart
MarkerPositionMap(
  markers: markers,
  grpcService: widget.grpcService,
)
```

## 测试步骤

### 1. 启动应用
```bash
cd /home/threegold/code/my_flutter_app
flutter run
```

### 2. 查看二维码地图
- 在底部导航栏选择"二维码地图"
- 地图会显示所有二维码的分布
- 不同颜色表示不同状态：
  - 🟢 绿色 = 正常
  - 🟡 黄色 = 警告
  - 🟠 橙色 = 错误
  - 🔴 红色 = 严重

### 3. 测试重置功能
1. 点击一个异常状态（非绿色）的二维码点
2. 查看详细信息对话框
3. 应该能看到绿色的"重置为正常"按钮
4. 点击该按钮
5. 确认重置操作
6. 等待重置完成
7. 检查提示消息是否显示成功

### 4. 验证后端调用
查看终端日志，应该能看到：
```
✓ 重置位置健康数据成功: <响应消息>
```

## 注意事项

1. **权限控制**：在实际生产环境中，应该添加权限验证，不是所有用户都能重置数据

2. **数据恢复**：重置操作会清除该位置的历史异常记录，建议：
   - 在重置前备份数据
   - 添加操作日志记录谁在何时重置了哪个位置

3. **刷新机制**：重置后需要刷新地图数据才能看到更新，可以：
   - 手动点击刷新按钮
   - 或等待自动刷新（30秒）

4. **批量操作**：如果需要批量重置多个二维码，可以考虑添加批量选择功能

## 相关文件

- `/lib/site_health_real_grpc_service.dart` - gRPC 服务实现
- `/lib/site_health_service_example.dart` - 地图组件和重置UI
- `/protos/site_health.proto` - Proto 定义文件

## API 接口

### ResetLocationHealthData
```protobuf
rpc ResetLocationHealthData(HealthInfoQueryRequest) returns (DataCleanupResponse);
```

**请求参数：**
- `node_id`: 节点ID（可选）
- `logic_location`: 逻辑坐标（可选）

**响应：**
- `cleaned_count`: 清除的记录数
- `success`: 是否成功
- `message`: 响应消息

## 故障排查

### 如果重置按钮不显示
- 检查二维码状态是否为 normal
- 只有异常状态的二维码才显示重置按钮

### 如果重置失败
- 检查 gRPC 服务是否连接
- 查看终端错误日志
- 验证后端服务是否正常运行

### 如果重置后数据没有更新
- 等待30秒自动刷新
- 或手动点击刷新按钮
- 检查后端是否真的清除了数据
