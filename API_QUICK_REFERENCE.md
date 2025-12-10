# SiteHealthService 快速参考指南

## 核心类和接口概览

```
SiteHealthGrpcService
├── 上报接口
│   ├── reportSiteHealthInfo()           # 单条上报
│   └── batchReportSiteHealthInfo()      # 批量上报
├── 查询接口
│   └── queryHealthInfo()                # 查询健康信息
├── 统计接口
│   └── getHealthStatistics()            # 获取统计
├── 分析接口
│   ├── analyzeLocationException()       # 场地问题分析
│   └── analyzeCarException()            # 车辆问题分析
├── 数据清理接口
│   └── cleanupData()                    # 数据清理/更新
└── 订阅接口
    └── subscribeHealthStatus()          # 实时状态变化
```

## 枚举速查表

| 枚举类型 | 值 | 含义 |
|---------|-----|------|
| **HealthStatus** | normal | ✓ 正常 |
| | warning | ⚠️  警告 |
| | error | ❌ 错误 |
| | critical | 🔴 严重 |
| **MarkerIssueType** | damaged | 二维码污损 |
| | misaligned | 二维码贴歪 |
| | wrongCode | 二维码贴错 |
| | lowConfidence | 识别置信度低 |
| **GroundIssueType** | uneven | 地面不平整 |
| | obstacle | 地面有障碍物 |
| | slope | 地面有坡度 |
| **GoodsSlotIssueType** | heightMismatch | 货架高度不匹配 |
| | positionError | 货架位置错误 |
| | damaged | 货架损坏 |
| **ExceptionCategory** | marker | 二维码异常 |
| | ground | 地面异常 |
| | goodsSlot | 货架异常 |

## API 快速使用

### 1️⃣ 上报异常数据

**二维码异常：**
```dart
await grpcService.reportSiteHealthInfo(
  MarkerHealthInfo(
    carId: 1,
    nodeId: 101,
    exceptionType: '污损',
    detectedMarkerCode: 'MRK_2024_101',
    decodeSuccessRate: 0.85,
    issueType: MarkerIssueType.damaged,
    healthStatus: HealthStatus.warning,
    description: '二维码污损',
    timestamp: DateTime.now(),
  ),
  null,
  null,
);
```

**地面异常：**
```dart
await grpcService.reportSiteHealthInfo(
  null,
  GroundHealthInfo(
    carId: 1,
    floorFlatness: 0.88,
    maxDeviation: 6.5,
    averageDeviation: 3.2,
    issueType: GroundIssueType.uneven,
    healthStatus: HealthStatus.warning,
    description: '地面不平',
    timestamp: DateTime.now(),
  ),
  null,
);
```

**货架异常：**
```dart
await grpcService.reportSiteHealthInfo(
  null,
  null,
  GoodsSlotHealthInfo(
    carId: 1,
    goodsSlotId: 501,
    expectedHeight: 800,
    detectedHeight: 808,
    heightDifference: 8,
    issueType: GoodsSlotIssueType.heightMismatch,
    healthStatus: HealthStatus.error,
    description: '高度不匹配',
    timestamp: DateTime.now(),
  ),
);
```

### 2️⃣ 查询数据

```dart
// 查询特定节点
final response = await grpcService.queryHealthInfo(nodeId: 101);

// 查询特定时间范围
final response = await grpcService.queryHealthInfo(
  startTime: DateTime.now().subtract(Duration(hours: 24)),
  endTime: DateTime.now(),
);

// 查询特定货架
final response = await grpcService.queryHealthInfo(goodsSlotId: 501);
```

### 3️⃣ 获取统计

```dart
final stats = await grpcService.getHealthStatistics();

print('整体分数: ${(stats.overallHealthScore * 100)}%');
print('正常节点: ${stats.normalNodes}/${stats.totalNodes}');
print('警告节点: ${stats.warningNodes}');
print('错误节点: ${stats.errorNodes}');
```

### 4️⃣ 异常分析

**判断是否为场地问题：**
```dart
final analysis = await grpcService.analyzeLocationException(
  nodeId: 101,
  logicLocation: PositionData(x: 10, y: 20),
  category: ExceptionCategory.marker,
);

if (analysis.isLocationRelated) {
  // 这是场地问题，多车在同一位置异常
  print('受影响车辆: ${analysis.affectedCarIds}');
} else {
  // 不是场地问题
}
```

**判断是否为车辆问题：**
```dart
final analysis = await grpcService.analyzeCarException(
  carId: 3,
  category: ExceptionCategory.marker,
);

if (analysis.isCarRelated) {
  // 这是车辆问题，单车多位置异常
  print('受影响位置: ${analysis.affectedNodeIds}');
} else {
  // 不是车辆问题
}
```

### 5️⃣ 数据清理

```dart
// 清理30天前的数据
await grpcService.cleanupData(
  category: ExceptionCategory.marker,
  beforeTime: DateTime.now().subtract(Duration(days: 30)),
);

// 清理特定节点的数据
await grpcService.cleanupData(
  category: ExceptionCategory.marker,
  nodeId: 101,
);

// 二维码更换后清理旧数据
await grpcService.cleanupData(
  category: ExceptionCategory.marker,
  nodeId: 101,
  markerCode: 'OLD_CODE',
  clearAll: true,
);
```

### 6️⃣ 实时订阅

```dart
grpcService.subscribeHealthStatus().listen((event) {
  print('更新时间: ${event['timestamp']}');
  print('二维码问题: ${event['marker_issues']}');
  print('地面问题: ${event['ground_issues']}');
});
```

## 决策树：应该用什么 API？

```
我想...

├─ 上报异常数据
│  └─ reportSiteHealthInfo() / batchReportSiteHealthInfo()
│
├─ 查询数据
│  └─ queryHealthInfo()
│     ├─ 按节点 → nodeId 参数
│     ├─ 按时间 → startTime/endTime 参数
│     └─ 按货架 → goodsSlotId 参数
│
├─ 了解整体状况
│  └─ getHealthStatistics()
│
├─ 分析问题根源
│  ├─ 这是场地问题吗？
│  │  └─ analyzeLocationException()
│  │     → 检查 isLocationRelated
│  └─ 这是车辆问题吗？
│     └─ analyzeCarException()
│        → 检查 isCarRelated
│
├─ 清理数据
│  └─ cleanupData()
│     ├─ 清理过期数据 → beforeTime 参数
│     ├─ 清理特定位置 → nodeId 参数
│     └─ 二维码更换 → markerCode 参数
│
└─ 实时监控
   └─ subscribeHealthStatus()
      → 监听流式更新
```

## 常见使用场景

### 场景 1：实时监控概览

```dart
// 定期获取统计信息更新UI
Timer.periodic(Duration(seconds: 10), (_) async {
  final stats = await grpcService.getHealthStatistics();
  setState(() => _stats = stats);
});
```

### 场景 2：调查特定异常

```dart
// 用户点击了一个异常，想了解详情
final details = await grpcService.queryHealthInfo(nodeId: 101);
// 并分析是场地问题还是车辆问题
final analysis = await grpcService.analyzeLocationException(
  nodeId: 101,
  logicLocation: PositionData(x: 10, y: 20),
  category: ExceptionCategory.marker,
);
```

### 场景 3：故障排查工作流

```dart
// 1. 获取当前状态
final stats = await grpcService.getHealthStatistics();

// 2. 如果有异常，分析原因
if (stats.warningNodes > 0) {
  // 检查位置问题
  for (int nodeId in problematicNodeIds) {
    final analysis = await grpcService.analyzeLocationException(
      nodeId: nodeId,
      category: ExceptionCategory.marker,
    );
    if (analysis.isLocationRelated) {
      print('位置$nodeId需要维修');
    }
  }
  
  // 检查车辆问题
  for (int carId in usedCarIds) {
    final analysis = await grpcService.analyzeCarException(
      carId: carId,
      category: ExceptionCategory.marker,
    );
    if (analysis.isCarRelated) {
      print('车$carId需要检查');
    }
  }
}

// 3. 问题修复后清理数据
await grpcService.cleanupData(
  category: ExceptionCategory.marker,
  nodeId: 101,
);
```

### 场景 4：定期数据清理

```dart
// 每天凌晨清理7天前的数据
Timer(
  Duration(hours: 24) - Duration(hours: DateTime.now().hour),
  () {
    grpcService.cleanupData(
      category: ExceptionCategory.marker,
      beforeTime: DateTime.now().subtract(Duration(days: 7)),
    );
  },
);
```

## 错误处理模板

```dart
try {
  final stats = await grpcService.getHealthStatistics();
  // 处理结果
} on TimeoutException {
  print('请求超时，请检查网络连接');
} on SocketException {
  print('无法连接到服务器');
} catch (e) {
  print('发生错误: $e');
  // 考虑降级处理或使用缓存数据
}
```

## 性能建议

- ✅ 使用时间范围过滤大批量查询
- ✅ 缓存统计结果，避免频繁查询
- ✅ 使用流式订阅而不是轮询
- ✅ 定期清理老旧数据
- ❌ 避免实时查询所有数据
- ❌ 不要在主UI线程进行阻塞操作

## 相关文件列表

| 文件 | 用途 |
|-----|------|
| `site_health_models.dart` | 所有数据模型定义 |
| `site_health_grpc_service.dart` | gRPC 服务实现 |
| `site_health_service_example.dart` | 完整使用示例 |
| `site_health_integration_test.dart` | 集成测试 |
| `SITEHEALTH_API.md` | 详细 API 文档 |
| `QUICKSTART.md` | 快速启动指南 |

## 版本信息

- Proto 版本: 3.0
- gRPC 版本: 4.0.1+
- 最后更新: 2024年1月
