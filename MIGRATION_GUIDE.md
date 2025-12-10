# SiteHealthService 迁移指南

从基础的 gRPC 实时数据流迁移到完整的 SiteHealthService API。

## 概述

本项目原本只有简单的实时数据流功能，现已升级为完整的场地健康监控服务，包括：

- ✅ 数据上报（单条/批量）
- ✅ 数据查询（灵活的查询条件）
- ✅ 统计分析（整体健康评估）
- ✅ 异常分析（区分场地/车辆问题）
- ✅ 数据管理（清理/更新）
- ✅ 实时订阅（流式状态更新）

## 版本对比

### 旧版本 (v1.0)

仅提供 3 个数据流方法：

```dart
// 实时告警流（每5秒）
Stream<Map<String, dynamic>> getRealtimeAlerts()

// 实时车辆状态（每3秒）
Stream<List<VehicleStatusData>> getRealtimeVehicleStatus()

// 实时指标（每2秒）
Stream<Map<String, int>> getRealtimeMetrics()
```

**特点：**
- 数据流向单向（服务器→客户端）
- 无法查询历史数据
- 无法上报自定义数据
- 无法进行数据分析

### 新版本 (v2.0)

提供 8 个完整的服务接口：

```dart
// 1. 上报接口
reportSiteHealthInfo()
batchReportSiteHealthInfo()

// 2. 查询接口
queryHealthInfo()

// 3. 统计接口
getHealthStatistics()

// 4. 订阅接口
subscribeHealthStatus()

// 5. 分析接口
analyzeLocationException()
analyzeCarException()

// 6. 数据管理接口
cleanupData()
```

**新增功能：**
- 双向通信（上报+查询）
- 完整的数据模型（二维码/地面/货架）
- 灵活的查询条件
- 强大的分析能力
- 数据管理功能

## 迁移路径

### 步骤 1：更新导入

**旧代码：**
```dart
import 'site_health_grpc_service.dart';
```

**新代码：**
```dart
import 'site_health_grpc_service.dart';
import 'site_health_models.dart';  // 新增！
```

### 步骤 2：保持向后兼容

旧的 3 个数据流方法仍然存在，可以继续使用：

```dart
// ✓ 仍然有效
final alertsStream = grpcService.getRealtimeAlerts();
final vehiclesStream = grpcService.getRealtimeVehicleStatus();
final metricsStream = grpcService.getRealtimeMetrics();
```

### 步骤 3：开始使用新 API

**示例：从查询模式升级：**

```dart
// 旧方式：只能看实时数据流
getRealtimeAlerts().listen((alert) {
  print(alert['type']);
});

// 新方式：可以查询历史数据
final response = await queryHealthInfo(
  nodeId: 101,
  startTime: DateTime.now().subtract(Duration(hours: 24)),
  endTime: DateTime.now(),
);
for (var marker in response.markerHealths) {
  print(marker.exceptionType);
}
```

### 步骤 4：利用新的分析功能

```dart
// 新增：分析问题根源
final locationAnalysis = await analyzeLocationException(
  nodeId: 101,
  category: ExceptionCategory.marker,
);

if (locationAnalysis.isLocationRelated) {
  // 这是场地问题，需要维修该位置
  print('位置 101 需要维修');
}
```

## 数据模型迁移

### VehicleStatusData → 更细致的模型

**旧模型：**
```dart
class VehicleStatusData {
  final String id;
  final String status;           // '运行中'/'异常'/'警告'
  final String condition;        // 模糊的条件描述
  final int healthScore;
  final String location;
  final String exception;        // 字符串异常码
}
```

**新模型分解为 3 个专业模型：**

```dart
// 二维码问题
class MarkerHealthInfo {
  final int carId;
  final int nodeId;
  final String exceptionType;
  final MarkerIssueType issueType;  // 强类型！
  final double decodeSuccessRate;
  final NodeDeviationData? deviation;
  // ...
}

// 地面问题
class GroundHealthInfo {
  final int carId;
  final double floorFlatness;
  final double maxDeviation;
  final GroundIssueType issueType;  // 强类型！
  // ...
}

// 货架问题
class GoodsSlotHealthInfo {
  final int carId;
  final int goodsSlotId;
  final int expectedHeight;
  final int detectedHeight;
  final GoodsSlotIssueType issueType;  // 强类型！
  // ...
}
```

**优势：**
- ✅ 类型安全（enum 而非字符串）
- ✅ 数据更详细（偏差、成功率等）
- ✅ 关注点分离（二维码/地面/货架分开）
- ✅ 易于扩展和维护

## UI 迁移指南

### 概览页面更新

**旧代码：**
```dart
// 用静态数据或简单的数据流
final metrics = {
  'normalVehicles': 12,
  'abnormalVehicles': 3,
};
```

**新代码：**
```dart
// 使用统计 API 获取准确的数据
final stats = await grpcService.getHealthStatistics();
return Text('正常节点: ${stats.normalNodes}/${stats.totalNodes}');
```

### 异常列表页面更新

**旧代码：**
```dart
// 只能看到实时流
getRealtimeAlerts().listen((alert) {
  // alert 是 Map<String, dynamic>
  print(alert['type']);
});
```

**新代码：**
```dart
// 可以查询、分析、清理
final response = await queryHealthInfo(nodeId: 101);

for (var marker in response.markerHealths) {
  // marker 是强类型 MarkerHealthInfo
  print(marker.issueType.name);  // 'damaged' 而非 '污损'
  
  // 进一步分析
  final analysis = await analyzeLocationException(
    nodeId: marker.nodeId,
    category: ExceptionCategory.marker,
  );
}
```

### 详情页面新增

**旧代码：** 无法提供详细分析

**新代码：**
```dart
class IssueDetailPage extends StatelessWidget {
  final int nodeId;
  final SiteHealthGrpcService grpcService;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        grpcService.queryHealthInfo(nodeId: nodeId),
        grpcService.analyzeLocationException(
          nodeId: nodeId,
          category: ExceptionCategory.marker,
        ),
      ]),
      builder: (context, snapshot) {
        final queryResult = snapshot.data![0];
        final analysis = snapshot.data![1];
        
        return Column(
          children: [
            Text('异常历史: ${queryResult.markerHealths.length}条'),
            Text('异常率: ${(analysis.exceptionRate * 100).toStringAsFixed(1)}%'),
            Text('判断: ${analysis.isLocationRelated ? "场地问题" : "非场地问题"}'),
          ],
        );
      },
    );
  }
}
```

## 数据库集成（可选）

如果之前有本地存储，现在可以：

```dart
// 1. 从本地读取旧数据
final oldData = await database.getAlerts(nodeId: 101);

// 2. 上报给新系统
for (var alert in oldData) {
  await grpcService.reportSiteHealthInfo(
    MarkerHealthInfo(
      carId: alert['carId'],
      nodeId: alert['nodeId'],
      // ...
    ),
    null,
    null,
  );
}

// 3. 从此只使用新系统的查询 API
final response = await grpcService.queryHealthInfo(nodeId: 101);
```

## 错误处理更新

**旧代码：**
```dart
getRealtimeAlerts().listen(
  (alert) => print(alert),
  onError: (e) => print('流错误: $e'),
);
```

**新代码：**
```dart
try {
  final response = await queryHealthInfo(nodeId: 101);
  // 处理结果
} on TimeoutException {
  print('请求超时');
} on SocketException {
  print('网络错误');
} catch (e) {
  print('未知错误: $e');
}
```

## 性能考虑

### 旧版本问题

- 数据流不可控，持续消耗带宽
- 无法查询历史数据
- 无法优化数据大小

### 新版本优化

```dart
// ✅ 只查询需要的时间范围
final response = await queryHealthInfo(
  startTime: DateTime.now().subtract(Duration(hours: 24)),
  endTime: DateTime.now(),
);

// ✅ 按状态过滤，减少返回数据
final response = await queryHealthInfo(
  minStatus: HealthStatus.warning,  // 只看有问题的
);

// ✅ 定期清理，保持数据库整洁
await cleanupData(
  category: ExceptionCategory.marker,
  beforeTime: DateTime.now().subtract(Duration(days: 30)),
);
```

## 迁移检查清单

- [ ] 导入 `site_health_models.dart`
- [ ] 验证现有代码继续工作（向后兼容）
- [ ] 开始使用新的查询 API
- [ ] 实现异常分析功能
- [ ] 添加数据清理逻辑
- [ ] 更新 UI 以使用统计数据
- [ ] 实施错误处理
- [ ] 测试所有功能

## 常见问题

**Q: 旧的 getRealtimeAlerts() 还能用吗？**  
A: 可以，完全向后兼容。但推荐逐步迁移到新 API。

**Q: 需要修改数据库吗？**  
A: 不需要。新 API 可以与现有存储并存。

**Q: 迁移要多久？**  
A: 一个小的 feature 可以逐个迁移，无需一次性重写。

**Q: 能混合使用新旧 API 吗？**  
A: 可以，但要注意数据一致性。

## 推荐的迁移顺序

1. 更新导入，确保编译通过
2. 将概览页面从数据流改为查询 API
3. 为异常列表添加分析功能
4. 创建详情页面展示分析结果
5. 实现数据清理任务
6. 逐步移除旧的数据流代码

## 获取帮助

- 📖 详细文档：`SITEHEALTH_API.md`
- 📚 使用示例：`site_health_service_example.dart`
- 🧪 测试用例：`site_health_integration_test.dart`
- 🚀 快速参考：`API_QUICK_REFERENCE.md`

---

**迁移完成后，你将拥有：**
- ✅ 完整的数据历史查询
- ✅ 强大的异常分析
- ✅ 灵活的数据管理
- ✅ 更好的类型安全
- ✅ 更清晰的代码结构

祝迁移顺利！ 🎉
