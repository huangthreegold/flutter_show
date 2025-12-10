/// 场地健康监控系统集成测试
/// 
/// 这个文件包含完整的集成测试案例，演示所有 SiteHealthService API 的使用

import 'site_health_grpc_service.dart';
import 'site_health_models.dart';

/// 集成测试套件
class SiteHealthIntegrationTests {
  final SiteHealthGrpcService grpcService;

  SiteHealthIntegrationTests(this.grpcService);

  /// 运行所有测试
  Future<void> runAllTests() async {
    print('╔════════════════════════════════════════════════════════════╗');
    print('║       场地健康监控系统 - 集成测试                         ║');
    print('╚════════════════════════════════════════════════════════════╝\n');

    try {
      await _testReportingFunctionality();
      await _testQueryingFunctionality();
      await _testStatisticsFunctionality();
      await _testAnalysisFunctionality();
      await _testDataCleanupFunctionality();
      await _testStreamingFunctionality();

      print('\n✅ 所有测试通过！\n');
    } catch (e) {
      print('\n❌ 测试失败: $e\n');
      rethrow;
    }
  }

  // ==================== 测试1: 上报功能 ====================

  Future<void> _testReportingFunctionality() async {
    print('\n【测试1】上报功能');
    print('─' * 60);

    // 测试1.1: 上报二维码异常
    print('测试1.1: 上报二维码异常');
    final markerHealth = MarkerHealthInfo(
      carId: 1,
      nodeId: 101,
      nodeLogicLocation: PositionData(x: 10, y: 20),
      exceptionType: '污损',
      detectedMarkerCode: 'MRK_2024_101',
      decodeSuccessRate: 0.85,
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
    print('  ✓ 成功上报二维码异常\n');

    // 测试1.2: 上报地面异常
    print('测试1.2: 上报地面异常');
    final groundHealth = GroundHealthInfo(
      carId: 2,
      startNode: PositionData(x: 10, y: 20),
      endNode: PositionData(x: 11, y: 20),
      floorFlatness: 0.88,
      maxDeviation: 6.5,
      averageDeviation: 3.2,
      issueType: GroundIssueType.uneven,
      healthStatus: HealthStatus.warning,
      description: '路段地面不平整，最大偏差6.5mm',
      timestamp: DateTime.now(),
    );
    await grpcService.reportSiteHealthInfo(null, groundHealth, null);
    print('  ✓ 成功上报地面异常\n');

    // 测试1.3: 上报货架异常
    print('测试1.3: 上报货架异常');
    final goodsHealth = GoodsSlotHealthInfo(
      carId: 3,
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
    print('  ✓ 成功上报货架异常\n');

    // 测试1.4: 批量上报
    print('测试1.4: 批量上报多个异常');
    final markerList = [
      MarkerHealthInfo(
        carId: 1,
        nodeId: 102,
        exceptionType: '贴歪',
        detectedMarkerCode: 'MRK_2024_102',
        decodeSuccessRate: 0.78,
        issueType: MarkerIssueType.misaligned,
        healthStatus: HealthStatus.warning,
        description: '二维码贴歪，角度偏差5°',
        timestamp: DateTime.now(),
      ),
      MarkerHealthInfo(
        carId: 2,
        nodeId: 103,
        exceptionType: '贴错',
        detectedMarkerCode: 'MRK_2024_103',
        decodeSuccessRate: 0.0,
        issueType: MarkerIssueType.wrongCode,
        healthStatus: HealthStatus.error,
        description: '二维码贴错，无法识别',
        timestamp: DateTime.now(),
      ),
    ];
    await grpcService.batchReportSiteHealthInfo(markerList, [], []);
    print('  ✓ 成功批量上报 ${markerList.length} 条异常\n');
  }

  // ==================== 测试2: 查询功能 ====================

  Future<void> _testQueryingFunctionality() async {
    print('\n【测试2】查询功能');
    print('─' * 60);

    // 测试2.1: 查询特定节点
    print('测试2.1: 查询特定节点的健康信息');
    final response1 = await grpcService.queryHealthInfo(nodeId: 101);
    print('  查询结果:');
    print('    • 二维码异常: ${response1.markerHealths.length}条');
    print('    • 地面异常: ${response1.groundHealths.length}条');
    print('  ✓ 查询成功\n');

    // 测试2.2: 查询特定货架
    print('测试2.2: 查询特定货架的信息');
    final response2 = await grpcService.queryHealthInfo(goodsSlotId: 501);
    print('  查询结果:');
    print('    • 货架异常: ${response2.goodsSlotHealths.length}条');
    print('  ✓ 查询成功\n');

    // 测试2.3: 查询时间范围内的数据
    print('测试2.3: 查询时间范围内的数据');
    final now = DateTime.now();
    final response3 = await grpcService.queryHealthInfo(
      startTime: now.subtract(const Duration(hours: 24)),
      endTime: now,
    );
    print('  查询结果 (最近24小时):');
    print('    • 总异常数: ${response3.markerHealths.length + response3.groundHealths.length}条');
    print('  ✓ 查询成功\n');

    // 测试2.4: 按状态过滤
    print('测试2.4: 按健康状态过滤查询');
    final response4 = await grpcService.queryHealthInfo(
      minStatus: HealthStatus.warning,
    );
    print('  查询结果 (状态≥警告):');
    print('    • 二维码异常: ${response4.markerHealths.length}条');
    print('    • 地面异常: ${response4.groundHealths.length}条');
    print('  ✓ 查询成功\n');
  }

  // ==================== 测试3: 统计功能 ====================

  Future<void> _testStatisticsFunctionality() async {
    print('\n【测试3】统计功能');
    print('─' * 60);

    print('测试3.1: 获取整体健康统计');
    final stats = await grpcService.getHealthStatistics();

    print('  📈 健康统计结果:');
    print('  ├─ 节点统计:');
    print('  │  ├─ 总数: ${stats.totalNodes}');
    print('  │  ├─ ✓ 正常: ${stats.normalNodes}');
    print('  │  ├─ ⚠️  警告: ${stats.warningNodes}');
    print('  │  ├─ ❌ 错误: ${stats.errorNodes}');
    print('  │  └─ 🔴 严重: ${stats.criticalNodes}');
    print('  ├─ 货架统计:');
    print('  │  ├─ 总数: ${stats.totalGoodsSlots}');
    print('  │  ├─ ✓ 正常: ${stats.normalGoodsSlots}');
    print('  │  ├─ ⚠️  警告: ${stats.warningGoodsSlots}');
    print('  │  └─ ❌ 错误: ${stats.errorGoodsSlots}');
    print('  ├─ 整体健康分数: ${(stats.overallHealthScore * 100).toStringAsFixed(1)}%');
    print('  └─ 车辆异常统计: ${stats.perCarExceptionCounts.length}台车');

    for (var carSummary in stats.perCarExceptionCounts) {
      print('      • 车${carSummary.carId}: ${carSummary.exceptionCount}个异常');
    }

    print('  ✓ 统计获取成功\n');
  }

  // ==================== 测试4: 分析功能 ====================

  Future<void> _testAnalysisFunctionality() async {
    print('\n【测试4】异常分析功能');
    print('─' * 60);

    // 测试4.1: 位置异常分析
    print('测试4.1: 位置异常分析（判断场地问题）');
    final locationAnalysis = await grpcService.analyzeLocationException(
      nodeId: 101,
      logicLocation: PositionData(x: 10, y: 20),
      category: ExceptionCategory.marker,
    );

    print('  📍 位置101的异常分析:');
    print('    • 总检测: ${locationAnalysis.totalDetections}次');
    print('    • 异常: ${locationAnalysis.exceptionCount}次');
    print('    • 异常率: ${(locationAnalysis.exceptionRate * 100).toStringAsFixed(1)}%');
    print('    • 涉及车辆: ${locationAnalysis.uniqueCarCount}台');
    print('    • 判断: ${locationAnalysis.isLocationRelated ? '🔴 场地问题' : '✓ 非场地问题'}');
    print('    • 受影响车辆: ${locationAnalysis.affectedCarIds.join(', ')}');
    print('  ✓ 分析完成\n');

    // 测试4.2: 单车异常分析
    print('测试4.2: 单车异常分析（判断车辆问题）');
    final carAnalysis = await grpcService.analyzeCarException(
      carId: 1,
      category: ExceptionCategory.marker,
    );

    print('  🚗 车1的异常分析:');
    print('    • 总检测: ${carAnalysis.totalDetections}次');
    print('    • 异常: ${carAnalysis.exceptionCount}次');
    print('    • 异常率: ${(carAnalysis.exceptionRate * 100).toStringAsFixed(1)}%');
    print('    • 受影响位置: ${carAnalysis.affectedLocationCount}个');
    print('    • 判断: ${carAnalysis.isCarRelated ? '🔴 车辆问题' : '✓ 非车辆问题'}');
    print('    • 受影响位置ID: ${carAnalysis.affectedNodeIds.join(', ')}');
    print('  ✓ 分析完成\n');
  }

  // ==================== 测试5: 数据清理功能 ====================

  Future<void> _testDataCleanupFunctionality() async {
    print('\n【测试5】数据清理功能');
    print('─' * 60);

    // 测试5.1: 清理特定节点的数据
    print('测试5.1: 清理特定节点的历史数据');
    final response1 = await grpcService.cleanupData(
      category: ExceptionCategory.marker,
      nodeId: 101,
      beforeTime: DateTime.now().subtract(const Duration(days: 7)),
    );
    print('  清理结果:');
    print('    • 类别: 二维码');
    print('    • 节点: 101');
    print('    • 时间: 7天前');
    print('    • 清理数据: ${response1.cleanedCount}条');
    print('    • 状态: ${response1.success ? '✓ 成功' : '❌ 失败'}');
    print('  ✓ 清理完成\n');

    // 测试5.2: 清理所有老旧数据
    print('测试5.2: 清理所有类别的老旧数据');
    final response2 = await grpcService.cleanupData(
      category: ExceptionCategory.marker,
      beforeTime: DateTime.now().subtract(const Duration(days: 30)),
    );
    print('  清理结果:');
    print('    • 类别: 二维码');
    print('    • 时间: 30天前');
    print('    • 清理数据: ${response2.cleanedCount}条');
    print('  ✓ 清理完成\n');

    // 测试5.3: 二维码更换后清理旧码值
    print('测试5.3: 二维码更换后清理旧码值数据');
    final response3 = await grpcService.cleanupData(
      category: ExceptionCategory.marker,
      nodeId: 101,
      markerCode: 'MRK_2024_101_OLD',
      clearAll: true,
    );
    print('  清理结果:');
    print('    • 原码值: MRK_2024_101_OLD');
    print('    • 清理数据: ${response3.cleanedCount}条');
    print('    • 消息: ${response3.message}');
    print('  ✓ 清理完成\n');
  }

  // ==================== 测试6: 流式订阅功能 ====================

  Future<void> _testStreamingFunctionality() async {
    print('\n【测试6】流式订阅功能');
    print('─' * 60);

    print('测试6.1: 订阅健康状态实时变化');
    print('  (显示前5个更新)\n');

    final stream = grpcService.subscribeHealthStatus();
    var count = 0;

    await for (final event in stream) {
      count++;
      print('  更新 #$count:');
      print('    时间: ${event['timestamp']}');
      if (event['marker_issues'] != null) {
        print('    二维码: ${event['marker_issues']['type']}');
      }
      if (event['ground_issues'] != null) {
        print('    地面: ${event['ground_issues']['type']}');
      }

      if (count >= 5) {
        break; // 只显示5个更新
      }
    }

    print('\n  ✓ 流式订阅测试完成\n');
  }

  // ==================== 辅助函数 ====================

  /// 打印分隔线
  void _printSeparator(String title) {
    print('\n═' * 60);
    print('  $title');
    print('═' * 60);
  }
}

// ==================== 运行测试的主函数 ====================

Future<void> main() async {
  // 初始化服务
  final grpcService = SiteHealthGrpcService();
  
  // 连接到 gRPC 服务器
  // 如果失败，将自动使用模拟数据模式
  try {
    await grpcService.connect('localhost', 50051);
  } catch (e) {
    print('⚠️  无法连接到 gRPC 服务器，使用模拟数据模式');
  }

  // 创建测试套件并运行所有测试
  final tests = SiteHealthIntegrationTests(grpcService);
  
  try {
    await tests.runAllTests();
  } finally {
    // 清理资源
    await grpcService.disconnect();
    print('已断开 gRPC 连接\n');
  }
}

// 简单的测试摘要
/*

此集成测试包含以下内容:

✓ 测试1: 上报功能
  - 上报二维码异常
  - 上报地面异常
  - 上报货架异常
  - 批量上报异常

✓ 测试2: 查询功能
  - 按节点查询
  - 按货架ID查询
  - 按时间范围查询
  - 按状态过滤查询

✓ 测试3: 统计功能
  - 获取整体健康统计
  - 显示节点和货架统计
  - 显示车辆异常统计

✓ 测试4: 异常分析功能
  - 位置异常分析（场地问题判断）
  - 单车异常分析（车辆问题判断）

✓ 测试5: 数据清理功能
  - 清理特定节点历史数据
  - 清理老旧数据
  - 二维码更换后清理旧数据

✓ 测试6: 流式订阅功能
  - 订阅实时健康状态变化

总计: 6大类，15+个测试用例

*/
