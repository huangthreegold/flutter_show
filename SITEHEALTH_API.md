# SiteHealthService gRPC API 文档

本文档介绍了场地健康监控系统的 gRPC 服务 API，包括所有接口、数据模型和使用示例。

## 目录

- [数据模型](#数据模型)
- [服务接口](#服务接口)
- [使用示例](#使用示例)
- [异常分析](#异常分析)
- [最佳实践](#最佳实践)

---

## 数据模型

### 枚举类型

#### HealthStatus - 健康状态
```dart
enum HealthStatus {
  unknown,   // 未知
  normal,    // 正常 ✓
  warning,   // 警告 ⚠️
  error,     // 错误 ❌
  critical,  // 严重 🔴
}
```

#### MarkerIssueType - 二维码问题类型
```dart
enum MarkerIssueType {
  none,            // 无问题
  damaged,         // 污损 - 表面脏污、刮擦等
  misaligned,      // 贴歪 - 角度偏差
  wrongCode,       // 贴错 - 码值错误
  lowConfidence,   // 置信度低 - 识别困难
}
```

#### GroundIssueType - 地面问题类型
```dart
enum GroundIssueType {
  none,      // 无问题
  uneven,    // 不平整 - 地面高低不平
  obstacle,  // 有障碍物 - 异物、鼓包等
  slope,     // 有坡度 - 倾斜
}
```

#### GoodsSlotIssueType - 货架问题类型
```dart
enum GoodsSlotIssueType {
  none,              // 无问题
  heightMismatch,    // 高度不匹配 - 与期望值不符
  positionError,     // 位置错误 - 安装偏移
  damaged,           // 损坏 - 变形、缺陷等
}
```

#### ExceptionCategory - 异常类别
```dart
enum ExceptionCategory {
  unknown,      // 未知
  marker,       // 二维码相关异常
  ground,       // 地面相关异常
  goodsSlot,    // 货架相关异常
}
```

### 数据类型

#### PositionData - 位置数据
```dart
class PositionData {
  int x;      // X 坐标
  int y;      // Y 坐标
}
```

#### NodeDeviationData - 位置偏差
```dart
class NodeDeviationData {
  double xDeviation;      // X 方向偏差（mm）
  double yDeviation;      // Y 方向偏差（mm）
  double angleDeviation;  // 角度偏差（度）
}
```

#### MarkerHealthInfo - 二维码健康信息
```dart
class MarkerHealthInfo {
  int carId;                        // 小车ID
  int nodeId;                       // 节点ID（二维码ID）
  PositionData? nodeLogicLocation;  // 逻辑位置坐标
  String exceptionType;             // 异常类型描述
  String detectedMarkerCode;        // 检测到的二维码值
  double decodeSuccessRate;         // 解码成功率 (0.0-1.0)
  NodeDeviationData? deviation;     // 位置偏差
  MarkerIssueType issueType;        // 问题分类
  HealthStatus healthStatus;        // 健康状态
  String description;               // 问题描述
  DateTime timestamp;               // 检测时间
}
```

#### GroundHealthInfo - 地面健康信息
```dart
class GroundHealthInfo {
  int carId;                    // 小车ID
  PositionData? startNode;      // 路段起点
  PositionData? endNode;        // 路段终点
  double floorFlatness;         // 平整度 (0.0-1.0，1.0为完全平整)
  double maxDeviation;          // 最大偏差 (mm)
  double averageDeviation;      // 平均偏差 (mm)
  GroundIssueType issueType;    // 问题分类
  HealthStatus healthStatus;    // 健康状态
  String description;           // 问题描述
  DateTime timestamp;           // 检测时间
}
```

#### GoodsSlotHealthInfo - 货架健康信息
```dart
class GoodsSlotHealthInfo {
  int carId;                    // 小车ID
  int goodsSlotId;              // 货架ID
  int expectedHeight;           // 期望高度 (mm)
  int detectedHeight;           // 检测高度 (mm)
  int heightDifference;         // 高度差 (mm)
  GoodsSlotIssueType issueType; // 问题分类
  HealthStatus healthStatus;    // 健康状态
  String description;           // 问题描述
  DateTime timestamp;           // 检测时间
  // ... 更多保留字段用于兼容
}
```

#### HealthStatistics - 健康统计信息
```dart
class HealthStatistics {
  int totalNodes;              // 总节点数
  int normalNodes;             // 正常节点数
  int warningNodes;            // 警告节点数
  int errorNodes;              // 错误节点数
  int criticalNodes;           // 严重节点数
  int totalGoodsSlots;         // 总货架数
  int normalGoodsSlots;        // 正常货架数
  int warningGoodsSlots;       // 警告货架数
  int errorGoodsSlots;         // 错误货架数
  double overallHealthScore;   // 整体健康分数 (0.0-1.0)
  List<CarExceptionSummary> perCarExceptionCounts; // 单车异常统计
}
```

---

## 服务接口

### 1. 上报健康数据

#### 单条上报
```dart
Future<void> reportSiteHealthInfo(
  MarkerHealthInfo? markerHealth,
  GroundHealthInfo? groundHealth,
  GoodsSlotHealthInfo? goodsSlotHealth,
) async
```

**参数说明：**
- `markerHealth` - 二维码健康信息（可选）
- `groundHealth` - 地面健康信息（可选）
- `goodsSlotHealth` - 货架健康信息（可选）

**示例：**
```dart
final markerHealth = MarkerHealthInfo(
  carId: 1,
  nodeId: 101,
  exceptionType: '污损',
  detectedMarkerCode: 'MRK_2024_101',
  decodeSuccessRate: 0.85,
  issueType: MarkerIssueType.damaged,
  healthStatus: HealthStatus.warning,
  description: '二维码表面有污渍',
  timestamp: DateTime.now(),
);

await grpcService.reportSiteHealthInfo(markerHealth, null, null);
```

#### 批量上报
```dart
Future<void> batchReportSiteHealthInfo(
  List<MarkerHealthInfo> markerHealths,
  List<GroundHealthInfo> groundHealths,
  List<GoodsSlotHealthInfo> goodsSlotHealths,
) async
```

**示例：**
```dart
await grpcService.batchReportSiteHealthInfo(
  markerHealthList,
  groundHealthList,
  goodsSlotHealthList,
);
```

### 2. 查询健康信息

```dart
Future<HealthInfoQueryResponse> queryHealthInfo({
  int? nodeId,                           // 节点ID
  PositionData? logicLocation,           // 逻辑位置
  int? goodsSlotId,                      // 货架ID
  HealthStatus? minStatus,               // 最小状态过滤
  DateTime? startTime,                   // 开始时间
  DateTime? endTime,                     // 结束时间
}) async
```

**示例 - 查询特定节点：**
```dart
final response = await grpcService.queryHealthInfo(nodeId: 101);
for (var marker in response.markerHealths) {
  print('问题：${marker.description}');
}
```

**示例 - 查询时间范围：**
```dart
final now = DateTime.now();
final response = await grpcService.queryHealthInfo(
  startTime: now.subtract(const Duration(hours: 24)),
  endTime: now,
);
```

### 3. 获取统计信息

```dart
Future<HealthStatistics> getHealthStatistics() async
```

**示例：**
```dart
final stats = await grpcService.getHealthStatistics();
print('正常节点: ${stats.normalNodes}/${stats.totalNodes}');
print('整体分数: ${(stats.overallHealthScore * 100).toStringAsFixed(1)}%');
```

### 4. 订阅实时状态变化

```dart
Stream<Map<String, dynamic>> subscribeHealthStatus()
```

**示例：**
```dart
grpcService.subscribeHealthStatus().listen((event) {
  print('收到更新: ${event['timestamp']}');
});
```

### 5. 位置异常分析

```dart
Future<LocationExceptionAnalysisResponse> analyzeLocationException({
  required int nodeId,
  required PositionData logicLocation,
  required ExceptionCategory category,
  DateTime? startTime,
  DateTime? endTime,
  String? markerCode,
}) async
```

**用途：** 判断某个位置是否存在场地问题

**示例：**
```dart
final analysis = await grpcService.analyzeLocationException(
  nodeId: 101,
  logicLocation: PositionData(x: 10, y: 20),
  category: ExceptionCategory.marker,
);

if (analysis.isLocationRelated) {
  print('⚠️  这是一个场地问题！');
  print('受影响车辆: ${analysis.affectedCarIds}');
} else {
  print('✓ 这不是场地问题');
}
```

**关键字段说明：**
- `totalDetections` - 总检测次数
- `exceptionCount` - 异常检测次数
- `exceptionRate` - 异常发生概率
- `uniqueCarCount` - 遇到异常的车辆数
- `isLocationRelated` - **是否为场地问题**（多车在同一位置异常）
- `affectedCarIds` - 受影响的车辆列表

### 6. 单车异常分析

```dart
Future<CarExceptionAnalysisResponse> analyzeCarException({
  required int carId,
  required ExceptionCategory category,
  MarkerIssueType? markerIssueType,
  GroundIssueType? groundIssueType,
  GoodsSlotIssueType? goodsSlotIssueType,
  DateTime? startTime,
  DateTime? endTime,
}) async
```

**用途：** 判断某台车是否存在系统性问题

**示例：**
```dart
final analysis = await grpcService.analyzeCarException(
  carId: 3,
  category: ExceptionCategory.marker,
);

if (analysis.isCarRelated) {
  print('🔴 这是一个车辆问题！');
  print('受影响位置: ${analysis.affectedNodeIds}');
  print('建议: 对车辆进行维护');
} else {
  print('✓ 这不是车辆问题');
}
```

**关键字段说明：**
- `exceptionRate` - 单车异常发生概率
- `affectedLocationCount` - 出现异常的位置数
- `isCarRelated` - **是否为车辆问题**（单车在多个位置出现相同异常）
- `affectedNodeIds` - 受影响的位置列表

### 7. 数据清理/更新

```dart
Future<DataCleanupResponse> cleanupData({
  required ExceptionCategory category,
  int? nodeId,
  PositionData? logicLocation,
  String? markerCode,
  DateTime? beforeTime,
  bool clearAll = false,
}) async
```

**用途：** 清理历史数据或更新异常记录

**示例 - 清理过期数据：**
```dart
final response = await grpcService.cleanupData(
  category: ExceptionCategory.marker,
  beforeTime: DateTime.now().subtract(const Duration(days: 30)),
);
print('已清理 ${response.cleanedCount} 条数据');
```

**示例 - 二维码更换后清理旧数据：**
```dart
final response = await grpcService.cleanupData(
  category: ExceptionCategory.marker,
  nodeId: 101,
  markerCode: 'MRK_2024_101_OLD',
  clearAll: true,
);
```

---

## 使用示例

### 完整的监控工作流

```dart
// 1. 初始化服务
final grpcService = SiteHealthGrpcService();
await grpcService.connect('localhost', 50051);

// 2. 上报异常数据
await grpcService.reportSiteHealthInfo(markerHealth, null, null);

// 3. 获取统计信息
final stats = await grpcService.getHealthStatistics();

// 4. 分析问题根源
final locationAnalysis = await grpcService.analyzeLocationException(...);
final carAnalysis = await grpcService.analyzeCarException(...);

// 5. 如果是已知问题，清理历史数据
await grpcService.cleanupData(...);

// 6. 断开连接
await grpcService.disconnect();
```

### 在 Flutter Widget 中使用

```dart
class HealthMonitoringPage extends StatefulWidget {
  @override
  State<HealthMonitoringPage> createState() => _HealthMonitoringPageState();
}

class _HealthMonitoringPageState extends State<HealthMonitoringPage> {
  late SiteHealthGrpcService grpcService;

  @override
  void initState() {
    super.initState();
    grpcService = SiteHealthGrpcService();
    grpcService.connect('localhost', 50051);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<HealthStatistics>(
      future: grpcService.getHealthStatistics(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        
        final stats = snapshot.data!;
        return Column(
          children: [
            Text('整体分数: ${(stats.overallHealthScore * 100).toStringAsFixed(1)}%'),
            Text('正常节点: ${stats.normalNodes}/${stats.totalNodes}'),
            Text('警告节点: ${stats.warningNodes}'),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    grpcService.disconnect();
    super.dispose();
  }
}
```

---

## 异常分析

### 如何区分"场地问题"与"车辆问题"

系统通过以下逻辑判断异常的根本原因：

#### 场地问题判断（LocationExceptionAnalysisResponse）
```
条件: 多台不同的车在同一位置出现异常
结论: isLocationRelated = true
含义: 该位置存在实际的物理问题（如地面不平、二维码污损等）
建议: 对该位置进行维修/维护
```

**示例：**
```
位置P-12异常历史:
  - AGV-03: 2024-01-15 10:30 报告地面不平
  - AGV-05: 2024-01-15 11:45 报告地面不平
  - AGV-07: 2024-01-15 13:20 报告地面不平

分析结果:
  totalDetections = 15次
  exceptionCount = 6次
  uniqueCarCount = 3台车
  isLocationRelated = true  ✓ 这是场地问题！
```

#### 车辆问题判断（CarExceptionAnalysisResponse）
```
条件: 单台车在多个不同位置出现相同类型的异常
结论: isCarRelated = true
含义: 该车存在系统性问题（如传感器故障等）
建议: 对该车进行检修/调试
```

**示例：**
```
AGV-03异常历史:
  - 位置P-12: 2024-01-15 10:30 识别困难
  - 位置P-15: 2024-01-15 11:45 识别困难
  - 位置C-08: 2024-01-15 13:20 识别困难

分析结果:
  totalDetections = 20次
  exceptionCount = 5次
  affectedLocationCount = 3个位置
  isCarRelated = true  ✓ 这是车辆问题！
```

---

## 最佳实践

### 1. 错误处理

```dart
try {
  final stats = await grpcService.getHealthStatistics();
  // 处理结果
} catch (e) {
  print('获取统计信息失败: $e');
  // 降级处理或提示用户
}
```

### 2. 自动重连

```dart
Future<void> connectWithRetry(int maxRetries) async {
  for (int i = 0; i < maxRetries; i++) {
    try {
      await grpcService.connect('localhost', 50051);
      return;
    } catch (e) {
      print('连接失败，第 ${i+1} 次重试...');
      await Future.delayed(Duration(seconds: 2 << i)); // 指数退避
    }
  }
}
```

### 3. 定期同步数据

```dart
Timer.periodic(const Duration(seconds: 30), (timer) async {
  try {
    final stats = await grpcService.getHealthStatistics();
    // 更新UI
  } catch (e) {
    // 处理错误
  }
});
```

### 4. 流式监听

```dart
final subscription = grpcService.subscribeHealthStatus().listen(
  (event) {
    // 处理实时更新
  },
  onError: (error) {
    print('流错误: $error');
  },
);

// 记得取消订阅
subscription.cancel();
```

### 5. 性能优化

- **分页查询**：处理大量数据时使用时间范围过滤
- **缓存统计**：避免频繁查询相同的统计信息
- **异步调用**：使用 `FutureBuilder` 避免阻塞UI

---

## 相关文件

- `lib/site_health_models.dart` - 数据模型定义
- `lib/site_health_grpc_service.dart` - gRPC 服务实现
- `lib/site_health_service_example.dart` - 完整的使用示例
- `site_health_service.proto` - Proto 定义文件

---

## 常见问题

**Q: 如何判断一个异常是场地问题还是车辆问题？**  
A: 使用 `analyzeLocationException()` 和 `analyzeCarException()` 分别分析。前者返回 `isLocationRelated`，后者返回 `isCarRelated`。

**Q: 数据清理会删除所有历史记录吗？**  
A: 不会。可以通过时间范围、节点ID 或货架ID 进行精确清理。设置 `clearAll=true` 时会删除指定类别的所有相关数据。

**Q: 可以离线工作吗？**  
A: 可以。当 gRPC 连接失败时，系统自动切换到本地模式，使用内存中存储的数据。

---

更新日期：2024年1月
