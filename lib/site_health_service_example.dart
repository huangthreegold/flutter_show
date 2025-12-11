import 'package:flutter/material.dart';
import 'site_health_grpc_service.dart';
import 'site_health_models.dart';

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
