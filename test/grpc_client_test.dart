import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/site_health_real_grpc_service.dart';

/// gRPC 客户端测试示例
/// 
/// 注意：运行此测试前，请确保 gRPC 服务器正在运行
void main() {
  group('SiteHealthRealGrpcService Tests', () {
    late SiteHealthRealGrpcService grpcService;

    setUp(() {
      grpcService = SiteHealthRealGrpcService();
    });

    tearDown(() async {
      await grpcService.disconnect();
    });

    test('连接到 gRPC 服务器', () async {
      // 修改为你的服务器地址
      const host = 'localhost';
      const port = 50051;

      try {
        await grpcService.connect(host, port);
        expect(grpcService.isConnected, true);
        print('✓ 连接成功');
      } catch (e) {
        print('✗ 连接失败: $e');
        print('提示：请确保 gRPC 服务器正在 $host:$port 运行');
        expect(true, false, reason: '无法连接到服务器');
      }
    });

    test('获取健康统计信息', () async {
      await grpcService.connect('localhost', 50051);
      
      try {
        final stats = await grpcService.getHealthStatistics();
        print('✓ 获取统计成功');
        print('  总节点数: ${stats.totalNodes}');
        print('  正常节点: ${stats.normalNodes}');
        print('  警告节点: ${stats.warningNodes}');
        print('  错误节点: ${stats.errorNodes}');
        
        expect(stats, isNotNull);
      } catch (e) {
        print('✗ 获取统计失败: $e');
        rethrow;
      }
    });

    test('订阅健康状态变化', () async {
      await grpcService.connect('localhost', 50051);
      
      try {
        final stream = grpcService.subscribeHealthStatus();
        print('✓ 开始订阅健康状态');
        
        // 接收前 3 条消息
        int count = 0;
        await for (final healthInfo in stream) {
          count++;
          print('  收到第 $count 条健康信息');
          
          if (healthInfo.hasMarkerHealth()) {
            print('    类型: 二维码健康信息');
          } else if (healthInfo.hasGroundHealth()) {
            print('    类型: 地面健康信息');
          } else if (healthInfo.hasGoodsSlotHealth()) {
            print('    类型: 货架健康信息');
          }
          
          if (count >= 3) break;
        }
        
        expect(count, greaterThan(0));
      } catch (e) {
        print('✗ 订阅失败: $e');
        rethrow;
      }
    }, timeout: const Timeout(Duration(seconds: 30)));

    test('获取实时指标流', () async {
      await grpcService.connect('localhost', 50051);
      
      try {
        final stream = grpcService.getRealtimeMetrics();
        print('✓ 开始获取实时指标');
        
        // 接收前 3 条指标
        int count = 0;
        await for (final metrics in stream) {
          count++;
          print('  第 $count 次指标:');
          print('    正常车辆: ${metrics['normalVehicles']}');
          print('    异常车辆: ${metrics['abnormalVehicles']}');
          print('    二维码异常: ${metrics['qrCodeAnomalies']}');
          print('    地面异常: ${metrics['groundAnomalies']}');
          
          if (count >= 3) break;
        }
        
        expect(count, greaterThan(0));
      } catch (e) {
        print('✗ 获取指标失败: $e');
        rethrow;
      }
    }, timeout: const Timeout(Duration(seconds: 30)));
  });
}
