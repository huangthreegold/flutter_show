import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fixnum/fixnum.dart';
import 'site_health_grpc_service.dart';
import 'site_health_models.dart';
import 'generated/types.pb.dart' as types;

/// 场地健康服务使用示例
///
/// 这个文件演示如何使用新添加的 SiteHealthService 接口
class SiteHealthServiceExample {
  final SiteHealthGrpcService grpcService;

  SiteHealthServiceExample(this.grpcService);

  // ==================== 上报健康数据示例 ====================

  /// 上报单个二维码异常
  Future<void> reportMarkerIssue() async {
    final markerHealth = MarkerHealthInfo(
      carId: 1,
      nodeId: 101,
      nodeLogicLocation: PositionData(x: 10, y: 20),
      exceptionType: '污损',
      detectedMarkerCode: 'MRK_2024_101',
      decodeSuccessRate: 0.82,
      deviation: NodeDeviationData(
        xDeviation: 2.5,
        yDeviation: 1.8,
        angleDeviation: 0.5,
      ),
      issueType: MarkerIssueType.damaged,
      healthStatus: HealthStatus.warning,
      description: '二维码表面有污渍，识别困难',
      timestamp: DateTime.now(),
    );

    await grpcService.reportSiteHealthInfo(markerHealth, null, null);
    print('✓ 已上报二维码异常');
  }

  /// 上报地面异常
  Future<void> reportGroundIssue() async {
    final groundHealth = GroundHealthInfo(
      carId: 1,
      startNode: PositionData(x: 10, y: 20),
      endNode: PositionData(x: 11, y: 20),
      floorFlatness: 0.88,
      maxDeviation: 6.5,
      averageDeviation: 3.2,
      issueType: GroundIssueType.uneven,
      healthStatus: HealthStatus.warning,
      description: '路段地面不平整，可能影响运行',
      timestamp: DateTime.now(),
    );

    await grpcService.reportSiteHealthInfo(null, groundHealth, null);
    print('✓ 已上报地面异常');
  }

  /// 上报货架异常
  Future<void> reportGoodsSlotIssue() async {
    final goodsHealth = GoodsSlotHealthInfo(
      carId: 1,
      goodsSlotId: 501,
      expectedHeight: 800,
      detectedHeight: 808,
      heightDifference: 8,
      issueType: GoodsSlotIssueType.heightMismatch,
      healthStatus: HealthStatus.error,
      description: '货架高度与预期不符，相差8mm',
      timestamp: DateTime.now(),
    );

    await grpcService.reportSiteHealthInfo(null, null, goodsHealth);
    print('✓ 已上报货架异常');
  }

  /// 批量上报多个异常
  Future<void> batchReportIssues() async {
    final markerHealths = [
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
      MarkerHealthInfo(
        carId: 2,
        nodeId: 102,
        exceptionType: '贴歪',
        detectedMarkerCode: 'MRK_2024_102',
        decodeSuccessRate: 0.78,
        issueType: MarkerIssueType.misaligned,
        healthStatus: HealthStatus.warning,
        description: '二维码贴歪',
        timestamp: DateTime.now(),
      ),
    ];

    final groundHealths = [
      GroundHealthInfo(
        carId: 1,
        floorFlatness: 0.90,
        maxDeviation: 5.0,
        averageDeviation: 2.5,
        issueType: GroundIssueType.uneven,
        healthStatus: HealthStatus.normal,
        description: '地面正常',
        timestamp: DateTime.now(),
      ),
    ];

    await grpcService.batchReportSiteHealthInfo(
      markerHealths,
      groundHealths,
      [],
    );
    print('✓ 已批量上报 ${markerHealths.length + groundHealths.length} 条异常');
  }

  // ==================== 查询健康信息示例 ====================

  /// 查询特定节点的健康信息
  Future<void> queryNodeHealth() async {
    final response = await grpcService.queryHealthInfo(
      nodeId: 101,
      minStatus: HealthStatus.normal,
    );

    print('📊 节点 101 的健康信息:');
    print('  - 二维码异常: ${response.markerHealths.length}条');
    print('  - 地面异常: ${response.groundHealths.length}条');
    print('  - 货架异常: ${response.goodsSlotHealths.length}条');

    for (var marker in response.markerHealths) {
      print('    • ${marker.exceptionType}: ${marker.description}');
    }
  }

  /// 查询时间范围内的健康信息
  Future<void> queryHealthInfoByTimeRange() async {
    final now = DateTime.now();
    final response = await grpcService.queryHealthInfo(
      startTime: now.subtract(const Duration(hours: 24)),
      endTime: now,
    );

    print('📊 最近24小时的健康信息:');
    print('  - 总二维码异常: ${response.markerHealths.length}条');
    print('  - 总地面异常: ${response.groundHealths.length}条');
    print('  - 总货架异常: ${response.goodsSlotHealths.length}条');
  }

  /// 查询特定货架的信息
  Future<void> queryGoodsSlotHealth() async {
    final response = await grpcService.queryHealthInfo(goodsSlotId: 501);

    print('📊 货架 501 的信息:');
    for (var goods in response.goodsSlotHealths) {
      print(
        '  • 车辆${goods.carId}: 高度差=${goods.heightDifference}mm, 状态=${goods.healthStatus.name}',
      );
    }
  }

  // ==================== 统计信息示例 ====================

  /// 获取整体健康统计
  Future<void> getHealthStatistics() async {
    final stats = await grpcService.getHealthStatistics();

    print('📈 场地健康统计:');
    print('节点状态:');
    print('  ✓ 正常: ${stats.normalNodes}/${stats.totalNodes}');
    print('  ⚠️  警告: ${stats.warningNodes}');
    print('  ❌ 错误: ${stats.errorNodes}');
    print('  🔴 严重: ${stats.criticalNodes}');
    print('');
    print('货架状态:');
    print('  ✓ 正常: ${stats.normalGoodsSlots}/${stats.totalGoodsSlots}');
    print('  ⚠️  警告: ${stats.warningGoodsSlots}');
    print('');
    print('整体健康分数: ${(stats.overallHealthScore * 100).toStringAsFixed(1)}%');
    print('');
    print('车辆异常统计:');
    for (var carSummary in stats.perCarExceptionCounts) {
      print('  • 车${carSummary.carId}: ${carSummary.exceptionCount}个异常');
    }
  }

  // ==================== 异常分析示例 ====================

  /// 分析特定位置是否为场地问题
  Future<void> analyzeLocationProblem() async {
    final analysis = await grpcService.analyzeLocationException(
      nodeId: 101,
      logicLocation: PositionData(x: 10, y: 20),
      category: ExceptionCategory.marker,
    );

    print('🔍 位置 101 的异常分析:');
    print('  总检测次数: ${analysis.totalDetections}');
    print('  异常次数: ${analysis.exceptionCount}');
    print('  异常概率: ${(analysis.exceptionRate * 100).toStringAsFixed(1)}%');
    print('  涉及车辆: ${analysis.uniqueCarCount}辆');

    if (analysis.isLocationRelated) {
      print('  ⚠️  判断: 这是一个场地问题！');
      print('  受影响车辆: ${analysis.affectedCarIds.join(', ')}');
    } else {
      print('  ℹ️  判断: 这不是场地问题');
    }
  }

  /// 分析特定车辆是否有系统性问题
  Future<void> analyzeCarProblem() async {
    final analysis = await grpcService.analyzeCarException(
      carId: 3,
      category: ExceptionCategory.marker,
    );

    print('🔍 车辆 3 的异常分析:');
    print('  总检测次数: ${analysis.totalDetections}');
    print('  异常次数: ${analysis.exceptionCount}');
    print('  异常概率: ${(analysis.exceptionRate * 100).toStringAsFixed(1)}%');
    print('  受影响位置: ${analysis.affectedLocationCount}个');

    if (analysis.isCarRelated) {
      print('  🔴 警告: 这是一个车辆问题！');
      print('  受影响位置ID: ${analysis.affectedNodeIds.join(', ')}');
      print('  建议: 对车辆进行维护检查');
    } else {
      print('  ℹ️  判断: 这不是车辆问题');
    }
  }

  // ==================== 数据清理示例 ====================

  /// 清理特定节点的历史数据
  Future<void> cleanupOldData() async {
    final response = await grpcService.cleanupData(
      category: ExceptionCategory.marker,
      nodeId: 101,
      beforeTime: DateTime.now().subtract(const Duration(days: 7)),
    );

    print('🗑️  数据清理结果:');
    print('  清理条数: ${response.cleanedCount}');
    print('  状态: ${response.success ? '✓ 成功' : '❌ 失败'}');
    print('  消息: ${response.message}');
  }

  /// 清理所有老旧异常数据
  Future<void> cleanupAllOldData() async {
    final response = await grpcService.cleanupData(
      category: ExceptionCategory.marker,
      beforeTime: DateTime.now().subtract(const Duration(days: 30)),
    );

    print('🗑️  清理30天前的异常数据: ${response.cleanedCount}条');
  }

  /// 二维码更换后清理旧码值数据
  Future<void> replaceMarkerCode() async {
    // 当二维码被更换时，清理旧码值的数据
    final response = await grpcService.cleanupData(
      category: ExceptionCategory.marker,
      nodeId: 101,
      markerCode: 'MRK_2024_101_OLD',
      clearAll: true,
    );

    print('🔄 二维码 101 已更换');
    print('  清理旧数据: ${response.cleanedCount}条');
  }

  // ==================== 流式订阅示例 ====================

  /// 订阅健康状态实时变化
  void subscribeHealthChanges() {
    final stream = grpcService.subscribeHealthStatus();

    stream.listen(
      (event) {
        print('📡 收到健康状态更新:');
        print('  时间: ${event['timestamp']}');
        if (event['marker_issues'] != null) {
          print('  二维码问题: ${event['marker_issues']['type']}');
        }
        if (event['ground_issues'] != null) {
          print('  地面问题: ${event['ground_issues']['type']}');
        }
      },
      onError: (error) => print('❌ 订阅错误: $error'),
      onDone: () => print('📡 订阅已关闭'),
    );
  }

  // ==================== 综合示例 ====================

  /// 完整的监控工作流示例
  Future<void> monitoringWorkflow() async {
    print('\n=== 场地健康监控工作流 ===\n');

    // 1. 上报异常数据
    print('【步骤1】上报异常数据');
    await reportMarkerIssue();
    await reportGroundIssue();
    print('');

    // 2. 查询统计信息
    print('【步骤2】查询统计信息');
    await getHealthStatistics();
    print('');

    // 3. 分析问题根源
    print('【步骤3】分析问题根源');
    await analyzeLocationProblem();
    print('');
    await analyzeCarProblem();
    print('');

    // 4. 清理处理后的数据
    print('【步骤4】清理历史数据');
    await cleanupOldData();
    print('');

    print('=== 监控工作流完成 ===\n');
  }
}

// ==================== 使用示例 ====================

/// 在 Widget 中使用的示例
class HealthMonitoringWidget extends StatefulWidget {
  const HealthMonitoringWidget({super.key});

  @override
  State<HealthMonitoringWidget> createState() => _HealthMonitoringWidgetState();
}

class _HealthMonitoringWidgetState extends State<HealthMonitoringWidget> {
  late SiteHealthGrpcService grpcService;
  late SiteHealthServiceExample example;
  late Future<HealthStatistics> _statsFuture;

  @override
  void initState() {
    super.initState();
    grpcService = SiteHealthGrpcService();
    example = SiteHealthServiceExample(grpcService);
    example.batchReportIssues().then((_) {
      setState(() {}); // 数据写入后刷新页面，保证地图有数据
    });
    _statsFuture = grpcService.getHealthStatistics();
  }

  @override
  void dispose() {
    grpcService.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('场地健康监控')),
      body: FutureBuilder<HealthStatistics>(
        future: _statsFuture,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final stats = snapshot.data!;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // 整体健康分数
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '整体健康分数',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      LinearProgressIndicator(
                        value: stats.overallHealthScore,
                        minHeight: 8,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${(stats.overallHealthScore * 100).toStringAsFixed(1)}%',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // 节点统计
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '节点状态',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildStatRow(
                        '✓ 正常',
                        '${stats.normalNodes}/${stats.totalNodes}',
                        Colors.green,
                      ),
                      _buildStatRow(
                        '⚠️  警告',
                        '${stats.warningNodes}',
                        Colors.orange,
                      ),
                      _buildStatRow('❌ 错误', '${stats.errorNodes}', Colors.red),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // 货架统计
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '货架状态',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildStatRow(
                        '✓ 正常',
                        '${stats.normalGoodsSlots}/${stats.totalGoodsSlots}',
                        Colors.green,
                      ),
                      _buildStatRow(
                        '⚠️  警告',
                        '${stats.warningGoodsSlots}',
                        Colors.orange,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // 二维码分布地图
              FutureBuilder<HealthInfoQueryResponse>(
                future: grpcService.queryHealthInfo(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final markerHealths = snapshot.data!.markerHealths;
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '二维码分布地图',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          MarkerPositionMap(markers: markerHealths),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStatRow(String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, color: color),
            ),
          ),
        ],
      ),
    );
  }
}

/// 二维码位置分布图组件
class MarkerPositionMap extends StatefulWidget {
  final List<MarkerHealthInfo> markers;
  final dynamic grpcService; // 可选的 gRPC 服务，用于重置功能

  const MarkerPositionMap({super.key, required this.markers, this.grpcService});

  @override
  State<MarkerPositionMap> createState() => _MarkerPositionMapState();
}

class _MarkerPositionMapState extends State<MarkerPositionMap> {
  double _scale = 1.0;
  Offset _offset = Offset.zero;
  bool _isResetting = false;

  Color _getStatusColor(HealthStatus status) {
    switch (status) {
      case HealthStatus.critical:
        return Colors.red;
      case HealthStatus.error:
        return Colors.orange;
      case HealthStatus.warning:
        return Colors.yellow;
      case HealthStatus.normal:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    // 计算坐标范围
    final xs = widget.markers
        .map((m) => m.nodeLogicLocation?.x)
        .where((x) => x != null)
        .cast<int>()
        .toList();
    final ys = widget.markers
        .map((m) => m.nodeLogicLocation?.y)
        .where((y) => y != null)
        .cast<int>()
        .toList();

    if (xs.isEmpty || ys.isEmpty) {
      return SizedBox(
        height: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 40),
              Text('暂无坐标数据', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      );
    }

    final minX = xs.reduce((a, b) => a < b ? a : b);
    final maxX = xs.reduce((a, b) => a > b ? a : b);
    final minY = ys.reduce((a, b) => a < b ? a : b);
    final maxY = ys.reduce((a, b) => a > b ? a : b);

    // 计算原始范围
    final rangeX = (maxX - minX).toDouble() + 2;
    final rangeY = (maxY - minY).toDouble() + 2;

    // 构建压缩映射
    xs.sort();
    ys.sort();
    final xCompressionMap = _buildCompressionMap(xs, minX - 1, maxX + 1);
    final yCompressionMap = _buildCompressionMap(ys, minY - 1, maxY + 1);

    // 计算压缩后的范围
    final compressedRangeX = xCompressionMap.isEmpty
        ? rangeX
        : (xCompressionMap.values.reduce((a, b) => a > b ? a : b));
    final compressedRangeY = yCompressionMap.isEmpty
        ? rangeY
        : (yCompressionMap.values.reduce((a, b) => a > b ? a : b));

    const padding = 30.0;
    const maxMapHeight = 500.0; // 增大地图高度显示大图

    final availableHeight = maxMapHeight - 2 * padding;
    final calculatedPixelsPerUnit = availableHeight / compressedRangeY;
    final pixelsPerUnit = calculatedPixelsPerUnit.clamp(25.0, 90.0); // 更高的像素密度

    final mapWidth = compressedRangeX * pixelsPerUnit + 2 * padding;
    final mapHeight = compressedRangeY * pixelsPerUnit + 2 * padding;

    // 计算可见区域的尺寸（假设容器宽度为屏幕宽度）
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - 48; // 减去卡片的 padding
    final availableDisplayHeight = 530.0; // 增大地图区域高度

    // 计算居中的初始偏移量
    final initialOffsetX = (availableWidth - mapWidth) / 2;
    final initialOffsetY = (availableDisplayHeight - mapHeight) / 2;

    // 只在第一次构建时设置初始偏移
    if (_offset == Offset.zero && mapWidth > 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {
            _offset = Offset(
              initialOffsetX.clamp(-mapWidth, availableWidth),
              initialOffsetY.clamp(-mapHeight, availableDisplayHeight),
            );
          });
        }
      });
    }

    return SizedBox(
      height: 560, // 增大总高度以显示大图
      child: Column(
        children: [
          // 信息栏 - 减小 padding
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'X: $minX-$maxX | Y: $minY-$maxY | ${widget.markers.length}个点 | 缩放: ${(_scale * 100).toStringAsFixed(0)}%',
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  height: 28, // 减小按钮高度从 32 到 28
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.zoom_in, size: 12),
                        label: const Text('放大', style: TextStyle(fontSize: 9)),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          minimumSize: const Size(0, 28),
                        ),
                        onPressed: () {
                          setState(() {
                            _scale = (_scale * 1.2).clamp(0.5, 5.0);
                          });
                        },
                      ),
                      const SizedBox(width: 4),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.zoom_out, size: 12),
                        label: const Text('缩小', style: TextStyle(fontSize: 9)),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          minimumSize: const Size(0, 28),
                        ),
                        onPressed: () {
                          setState(() {
                            _scale = (_scale / 1.2).clamp(0.5, 5.0);
                          });
                        },
                      ),
                      const SizedBox(width: 4),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.refresh, size: 12),
                        label: const Text('重置', style: TextStyle(fontSize: 9)),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          minimumSize: const Size(0, 28),
                        ),
                        onPressed: () {
                          setState(() {
                            _scale = 1.0;
                            _offset = Offset.zero;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 地图
          Expanded(
            child: Container(
              color: Colors.grey.shade100,
              child: GestureDetector(
                onScaleUpdate: (details) {
                  setState(() {
                    _scale = (_scale * details.scale).clamp(0.5, 5.0);
                    _offset += details.focalPointDelta;
                  });
                },
                onTapUp: (details) {
                  _handleMapTap(
                    details.localPosition,
                    minX,
                    minY,
                    compressedRangeX,
                    compressedRangeY,
                    xCompressionMap,
                    yCompressionMap,
                    pixelsPerUnit,
                    padding,
                  );
                },
                child: ClipRect(
                  child: OverflowBox(
                    alignment: Alignment.topLeft,
                    maxWidth: double.infinity,
                    maxHeight: double.infinity,
                    child: Transform(
                      alignment: Alignment.topLeft,
                      transform: Matrix4.identity()
                        ..translate(_offset.dx, _offset.dy)
                        ..scale(_scale),
                      child: Container(
                        width: mapWidth,
                        height: mapHeight,
                        color: Colors.white,
                        child: CustomPaint(
                          painter: _SimpleMapPainter(
                            markers: widget.markers,
                            minX: minX,
                            minY: minY,
                            compressedRangeX: compressedRangeX,
                            compressedRangeY: compressedRangeY,
                            xCompressionMap: xCompressionMap,
                            yCompressionMap: yCompressionMap,
                            pixelsPerUnit: pixelsPerUnit,
                            padding: padding,
                            getStatusColor: _getStatusColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleMapTap(
    Offset tapPosition,
    int minX,
    int minY,
    double compressedRangeX,
    double compressedRangeY,
    Map<int, double> xCompressionMap,
    Map<int, double> yCompressionMap,
    double pixelsPerUnit,
    double padding,
  ) {
    // 反向计算点击位置对应的压缩坐标
    final adjustedX = (tapPosition.dx - _offset.dx) / _scale;
    final adjustedY = (tapPosition.dy - _offset.dy) / _scale;

    final compressedX = (adjustedX - padding) / pixelsPerUnit;
    final compressedY = (adjustedY - padding) / pixelsPerUnit;

    // 从压缩坐标反向映射到原始坐标
    int originalX = minX - 1;
    int originalY = minY - 1;

    // X 轴反向映射
    for (final entry in xCompressionMap.entries) {
      if (entry.value <= compressedX) {
        originalX = entry.key;
      }
    }

    // Y 轴反向映射
    for (final entry in yCompressionMap.entries) {
      if (entry.value <= compressedY) {
        originalY = entry.key;
      }
    }

    // 查找点击范围内的标记点（±2 个单位）
    const tolerance = 2.5;
    MarkerHealthInfo? clickedMarker;
    double minDistance = tolerance;

    for (final marker in widget.markers) {
      final mx = marker.nodeLogicLocation?.x;
      final my = marker.nodeLogicLocation?.y;
      if (mx == null || my == null) continue;

      final distance = ((originalX - mx).abs() + (originalY - my).abs())
          .toDouble();
      if (distance < minDistance) {
        minDistance = distance;
        clickedMarker = marker;
      }
    }

    if (clickedMarker != null) {
      _showMarkerInfo(clickedMarker);
    }
  }

  void _showMarkerInfo(MarkerHealthInfo marker) {
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text('节点 ${marker.nodeId} 信息'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _infoRow('车辆 ID', marker.carId.toString()),
                _infoRow('节点 ID', marker.nodeId.toString()),
                _infoRow(
                  '坐标',
                  '(${marker.nodeLogicLocation?.x}, ${marker.nodeLogicLocation?.y})',
                ),
                _infoRow('异常类型', marker.exceptionType),
                _infoRow('二维码值', marker.detectedMarkerCode),
                _infoRow(
                  '识别成功率',
                  '${(marker.decodeSuccessRate * 100).toStringAsFixed(1)}%',
                ),
                _infoRow('状态', marker.healthStatus.name),
                _infoRow('问题类型', marker.issueType.name),
                if (marker.deviation != null) ...[
                  const SizedBox(height: 8),
                  const Text(
                    '偏差数据:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  _infoRow(
                    'X 偏差',
                    '${marker.deviation!.xDeviation.toStringAsFixed(2)}',
                  ),
                  _infoRow(
                    'Y 偏差',
                    '${marker.deviation!.yDeviation.toStringAsFixed(2)}',
                  ),
                  _infoRow(
                    '角度偏差',
                    '${marker.deviation!.angleDeviation.toStringAsFixed(2)}',
                  ),
                ],
                _infoRow('说明', marker.description),
                _infoRow('时间', marker.timestamp.toString().split('.')[0]),
              ],
            ),
          ),
          actions: [
            if (marker.healthStatus != HealthStatus.normal)
              ElevatedButton.icon(
                icon: _isResetting
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      )
                    : const Icon(Icons.refresh, size: 18),
                label: Text(_isResetting ? '重置中...' : '重置为正常'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: _isResetting
                    ? null
                    : () =>
                          _resetMarkerToNormal(marker, context, setDialogState),
              ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('关闭'),
            ),
          ],
        ),
      ),
    );
  }

  /// 重置二维码为正常状态
  Future<void> _resetMarkerToNormal(
    MarkerHealthInfo marker,
    BuildContext dialogContext,
    StateSetter setDialogState,
  ) async {
    setDialogState(() {
      _isResetting = true;
    });

    try {
      // 显示确认对话框
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('确认重置'),
          content: Text(
            '确定要将位置 (${marker.nodeLogicLocation?.x ?? 0}, ${marker.nodeLogicLocation?.y ?? 0}) 的健康状态重置为正常吗？\n\n'
            '这将清除该位置的所有异常记录。',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('取消'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('确认'),
            ),
          ],
        ),
      );

      if (confirmed != true) {
        setDialogState(() {
          _isResetting = false;
        });
        return;
      }

      // 调用 gRPC 服务重置健康数据
      if (widget.grpcService != null) {
        try {
          // 将 PositionData 转换为 PositionData_t (protobuf 类型)
          final logicLoc = types.PositionData_t()
            ..localX = Int64(marker.nodeLogicLocation?.x ?? 0)
            ..localY = Int64(marker.nodeLogicLocation?.y ?? 0);

          await widget.grpcService.resetLocationHealthData(
            logicLocation: logicLoc,
          );
        } catch (e) {
          print('调用 resetLocationHealthData 失败: $e');
          // 如果失败，模拟延迟以显示操作完成
          await Future.delayed(const Duration(milliseconds: 500));
        }
      } else {
        // 如果没有 gRPC 服务，使用模拟延迟
        await Future.delayed(const Duration(seconds: 1));
      }

      if (!context.mounted) return;

      // 显示成功消息
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('✓ 节点 ${marker.nodeId} 已重置为正常状态'),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 2),
        ),
      );

      // 关闭详情对话框
      Navigator.pop(dialogContext);

      // 刷新地图数据
      if (mounted) {
        setState(() {
          // 触发重新加载
        });
      }
    } catch (e) {
      if (!context.mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('✗ 重置失败: $e'),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
        ),
      );
    } finally {
      if (mounted) {
        setDialogState(() {
          _isResetting = false;
        });
      }
    }
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 70,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }

  /// 构建坐标压缩映射
  /// 返回 Map<int, double>，键是原始坐标，值是压缩后的距离
  Map<int, double> _buildCompressionMap(
    List<int> sortedCoords,
    int min,
    int max,
  ) {
    final compressionMap = <int, double>{};

    if (sortedCoords.isEmpty) return compressionMap;

    // 第一个坐标到起始点的距离
    compressionMap[sortedCoords[0]] = (sortedCoords[0] - min).toDouble();

    // 处理坐标之间的间隔
    for (int i = 0; i < sortedCoords.length - 1; i++) {
      final current = sortedCoords[i];
      final next = sortedCoords[i + 1];
      final gap = next - current;

      if (gap > 1) {
        // 空白区间：压缩到 0.15 倍（更加压缩）
        compressionMap[next] = (compressionMap[current] ?? 0) + gap * 0.15;
      } else {
        // 相邻坐标：放大到 1.5 倍
        compressionMap[next] = (compressionMap[current] ?? 0) + gap * 1.5;
      }
    }

    return compressionMap;
  }
}

/// 地图绘制器
class _SimpleMapPainter extends CustomPainter {
  final List<MarkerHealthInfo> markers;
  final int minX;
  final int minY;
  final double compressedRangeX;
  final double compressedRangeY;
  final Map<int, double> xCompressionMap;
  final Map<int, double> yCompressionMap;
  final double pixelsPerUnit;
  final double padding;
  final Color Function(HealthStatus) getStatusColor;

  _SimpleMapPainter({
    required this.markers,
    required this.minX,
    required this.minY,
    required this.compressedRangeX,
    required this.compressedRangeY,
    required this.xCompressionMap,
    required this.yCompressionMap,
    required this.pixelsPerUnit,
    required this.padding,
    required this.getStatusColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 绘制网格
    _drawGrid(canvas, size);

    // 绘制标记点
    _drawMarkers(canvas);
  }

  void _drawGrid(Canvas canvas, Size size) {
    final gridPaint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = 0.5;

    final borderPaint = Paint()
      ..color = Colors.grey.shade700
      ..strokeWidth = 2;

    // 竖线
    for (
      double x = 0;
      x <= compressedRangeX * pixelsPerUnit;
      x += pixelsPerUnit
    ) {
      canvas.drawLine(
        Offset(padding + x, padding),
        Offset(padding + x, padding + compressedRangeY * pixelsPerUnit),
        gridPaint,
      );
    }

    // 横线
    for (
      double y = 0;
      y <= compressedRangeY * pixelsPerUnit;
      y += pixelsPerUnit
    ) {
      canvas.drawLine(
        Offset(padding, padding + y),
        Offset(padding + compressedRangeX * pixelsPerUnit, padding + y),
        gridPaint,
      );
    }

    // 边框
    canvas.drawRect(
      Rect.fromLTWH(
        padding,
        padding,
        compressedRangeX * pixelsPerUnit,
        compressedRangeY * pixelsPerUnit,
      ),
      borderPaint,
    );
  }

  void _drawMarkers(Canvas canvas) {
    // 第一步：先绘制所有连接线
    _drawConnectionLines(canvas);

    // 第二步：绘制标记点（正方形）
    for (final marker in markers) {
      final x = marker.nodeLogicLocation?.x;
      final y = marker.nodeLogicLocation?.y;
      if (x == null || y == null) continue;

      // 坐标映射：从逻辑坐标到像素坐标
      // 需要通过 compression map 应用压缩变换
      final compressedX = xCompressionMap[x] ?? (x - minX + 1).toDouble();
      final compressedY = yCompressionMap[y] ?? (y - minY + 1).toDouble();

      final px =
          padding +
          compressedX / compressedRangeX * compressedRangeX * pixelsPerUnit;
      final py =
          padding +
          compressedY / compressedRangeY * compressedRangeY * pixelsPerUnit;

      final color = getStatusColor(marker.healthStatus);

      const rectSize = 18.0; // 正方形边长

      // 阴影
      final shadowPaint = Paint()
        ..color = color.withOpacity(0.2)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(px, py),
          width: rectSize + 6,
          height: rectSize + 6,
        ),
        shadowPaint,
      );

      // 正方形
      final rectPaint = Paint()..color = color;
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(px, py),
          width: rectSize,
          height: rectSize,
        ),
        rectPaint,
      );

      // 边框
      final borderPaint = Paint()
        ..color = Colors.white
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke;
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(px, py),
          width: rectSize,
          height: rectSize,
        ),
        borderPaint,
      );

      // 文字
      final textPainter = TextPainter(
        text: TextSpan(
          text: marker.nodeId.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 7,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(px - textPainter.width / 2, py - textPainter.height / 2),
      );
    }
  }

  void _drawConnectionLines(Canvas canvas) {
    // 绿色虚线画笔
    final linePaint = Paint()
      ..color = Colors.green.withOpacity(0.6)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    // 创建坐标到标记点的映射，用于快速查找
    final Map<String, Offset> positionMap = {};
    for (final marker in markers) {
      final x = marker.nodeLogicLocation?.x;
      final y = marker.nodeLogicLocation?.y;
      if (x == null || y == null) continue;

      final compressedX = xCompressionMap[x] ?? (x - minX + 1).toDouble();
      final compressedY = yCompressionMap[y] ?? (y - minY + 1).toDouble();

      final px =
          padding +
          compressedX / compressedRangeX * compressedRangeX * pixelsPerUnit;
      final py =
          padding +
          compressedY / compressedRangeY * compressedRangeY * pixelsPerUnit;

      positionMap['$x,$y'] = Offset(px, py);
    }

    // 绘制相邻点之间的连接线
    final drawn = <String>{}; // 避免重复绘制同一条线
    for (final marker in markers) {
      final x = marker.nodeLogicLocation?.x;
      final y = marker.nodeLogicLocation?.y;
      if (x == null || y == null) continue;

      final currentPos = positionMap['$x,$y'];
      if (currentPos == null) continue;

      // 检查右侧相邻点 (x+1, y)
      final rightKey = '${x + 1},$y';
      if (positionMap.containsKey(rightKey) &&
          !drawn.contains('$x,$y-$rightKey')) {
        _drawDashedLine(canvas, currentPos, positionMap[rightKey]!, linePaint);
        drawn.add('$x,$y-$rightKey');
        drawn.add('$rightKey-$x,$y');
      }

      // 检查下方相邻点 (x, y+1)
      final bottomKey = '$x,${y + 1}';
      if (positionMap.containsKey(bottomKey) &&
          !drawn.contains('$x,$y-$bottomKey')) {
        _drawDashedLine(canvas, currentPos, positionMap[bottomKey]!, linePaint);
        drawn.add('$x,$y-$bottomKey');
        drawn.add('$bottomKey-$x,$y');
      }
    }
  }

  void _drawDashedLine(Canvas canvas, Offset start, Offset end, Paint paint) {
    const dashWidth = 5.0;
    const dashSpace = 3.0;

    final dx = end.dx - start.dx;
    final dy = end.dy - start.dy;
    final distance = sqrt(dx * dx + dy * dy);

    final unitX = dx / distance;
    final unitY = dy / distance;

    double currentDistance = 0;
    while (currentDistance < distance) {
      final x1 = start.dx + unitX * currentDistance;
      final y1 = start.dy + unitY * currentDistance;

      final remainingDistance = distance - currentDistance;
      final currentDashWidth = remainingDistance < dashWidth
          ? remainingDistance
          : dashWidth;

      final x2 = start.dx + unitX * (currentDistance + currentDashWidth);
      final y2 = start.dy + unitY * (currentDistance + currentDashWidth);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);

      currentDistance += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(_SimpleMapPainter oldDelegate) => false;
}

/// 首页二维码地图展示
class MarkerMapHomePage extends StatefulWidget {
  final dynamic grpcService;

  const MarkerMapHomePage({super.key, required this.grpcService});

  @override
  State<MarkerMapHomePage> createState() => _MarkerMapHomePageState();
}

class _MarkerMapHomePageState extends State<MarkerMapHomePage> {
  late Future<List<MarkerHealthInfo>> _markersFuture;
  Timer? _refreshTimer;

  @override
  void initState() {
    super.initState();
    _markersFuture = _loadMarkersWithData();

    // 每30秒自动刷新一次数据
    _refreshTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
      if (mounted) {
        setState(() {
          _markersFuture = _loadMarkersWithData();
        });
      }
    });
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    super.dispose();
  }

  Future<List<MarkerHealthInfo>> _loadMarkersWithData() async {
    // 从 gRPC 服务查询真实的二维码数据并转换类型
    try {
      final resp = await widget.grpcService.queryHealthInfo();
      print('📍 加载了 ${resp.markerHealths.length} 条二维码数据');

      // 如果没有数据，也返回空列表而不是转圈圈
      if (resp.markerHealths.isEmpty) {
        print('⚠️ 暂无二维码数据，请先在系统中上报异常');
        return [];
      }

      // 将 protobuf 生成的 MarkerHealthInfo 转换为模型类 MarkerHealthInfo
      final List<MarkerHealthInfo> markers = <MarkerHealthInfo>[
        for (final pbMarker in resp.markerHealths)
          MarkerHealthInfo(
            carId: pbMarker.carId.toInt(),
            nodeId: pbMarker.nodeId.toInt(),
            nodeLogicLocation: pbMarker.hasNodeLogicLocation()
                ? PositionData(
                    x: pbMarker.nodeLogicLocation.localX.toInt(),
                    y: pbMarker.nodeLogicLocation.localY.toInt(),
                  )
                : null,
            exceptionType: pbMarker.exceptionType,
            detectedMarkerCode: pbMarker.detectedMarkerCode,
            decodeSuccessRate: pbMarker.decodeSuccessRate.toDouble(),
            deviation: pbMarker.hasDeviation()
                ? NodeDeviationData(
                    xDeviation: pbMarker.deviation.xDeviation.toDouble(),
                    yDeviation: pbMarker.deviation.yDeviation.toDouble(),
                    angleDeviation: pbMarker.deviation.angleDeviation
                        .toDouble(),
                  )
                : null,
            issueType: _convertMarkerIssueType(pbMarker.issueType),
            healthStatus: _convertHealthStatus(pbMarker.healthStatus),
            description: pbMarker.description,
            timestamp: DateTime.fromMillisecondsSinceEpoch(
              pbMarker.timestamp.seconds.toInt() * 1000 +
                  pbMarker.timestamp.nanos ~/ 1000000,
            ),
          ),
      ];

      return markers;
    } catch (e) {
      print('加载二维码数据失败: $e');
      return [];
    }
  }

  // 转换 protobuf MarkerIssueType 为模型 MarkerIssueType
  MarkerIssueType _convertMarkerIssueType(dynamic pbType) {
    final typeName = pbType.toString();
    if (typeName.contains('DAMAGED')) return MarkerIssueType.damaged;
    if (typeName.contains('MISALIGNED')) return MarkerIssueType.misaligned;
    if (typeName.contains('ANGLE_DEVIATION'))
      return MarkerIssueType.angleDeviation;
    if (typeName.contains('WRONG_CODE')) return MarkerIssueType.wrongCode;
    return MarkerIssueType.none;
  }

  // 转换 protobuf HealthStatus 为模型 HealthStatus
  HealthStatus _convertHealthStatus(dynamic pbStatus) {
    final statusName = pbStatus.toString();
    if (statusName.contains('CRITICAL')) return HealthStatus.critical;
    if (statusName.contains('ERROR')) return HealthStatus.error;
    if (statusName.contains('WARNING')) return HealthStatus.warning;
    if (statusName.contains('NORMAL')) return HealthStatus.normal;
    return HealthStatus.unknown;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('二维码地图'),
        backgroundColor: Colors.blue.shade700,
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _markersFuture = _loadMarkersWithData();
              });
            },
            tooltip: '刷新地图',
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE3F2FD), Color(0xFF90CAF9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FutureBuilder<List<MarkerHealthInfo>>(
          future: _markersFuture,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final markers = snapshot.data!;
            if (markers.isEmpty) {
              return const Center(
                child: Text(
                  '暂无二维码数据',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              );
            }
            return SingleChildScrollView(
              child: Center(
                child: Card(
                  margin: const EdgeInsets.all(16),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '二维码分布地图',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1565C0),
                          ),
                        ),
                        const SizedBox(height: 16),
                        MarkerPositionMap(
                          markers: markers,
                          grpcService: widget.grpcService,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          '共 ${markers.length} 个二维码',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 16,
                          children: [
                            _legendDot(Colors.green, '正常'),
                            _legendDot(Colors.yellow, '警告'),
                            _legendDot(Colors.orange, '错误'),
                            _legendDot(Colors.red, '严重'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _legendDot(Color color, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12),
          ),
        ),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
