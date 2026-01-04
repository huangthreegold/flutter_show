#!/usr/bin/env dart

// 使用 ReportAngleLearning 接口添加数据
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'lib/generated/site_health.pbgrpc.dart' as pb;
import 'lib/generated/types.pb.dart' as types;
import 'lib/generated/google/protobuf/empty.pb.dart';

void main() async {
  print('📡 连接到 gRPC 服务器...');
  
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = pb.SiteHealthServiceClient(channel);

  try {
    // 使用 ReportAngleLearning 接口添加数据
    final testData = [
      {'x': 0, 'y': 0, 'angle': 45.5, 'carId': 1},
      {'x': 0, 'y': 0, 'angle': 45.8, 'carId': 2},
      {'x': 0, 'y': 0, 'angle': 45.2, 'carId': 3},
      {'x': 1, 'y': 0, 'angle': 90.1, 'carId': 1},
      {'x': 1, 'y': 0, 'angle': 90.3, 'carId': 2},
      {'x': 0, 'y': 1, 'angle': 135.2, 'carId': 3},
      {'x': 0, 'y': 1, 'angle': 135.5, 'carId': 1},
      {'x': 1, 'y': 1, 'angle': 180.0, 'carId': 2},
      {'x': 2, 'y': 0, 'angle': 270.5, 'carId': 3},
    ];

    print('\n➕ 使用 ReportAngleLearning 添加 ${testData.length} 个样本...\n');

    for (var data in testData) {
      final request = pb.ReportAngleLearningRequest()
        ..carId = Int64(data['carId'] as int)
        ..carType = 'AGV'
        ..logicLocation = (types.PositionData_t()
          ..localX = Int64(data['x'] as int)
          ..localY = Int64(data['y'] as int))
        ..carHeading = (data['angle']! as double)
        ..movementDirection = (data['angle']! as double)
        ..movementSpeed = 1.0
        ..learnedAngle = (data['angle']! as double)
        ..clarity = 0.9
        ..markerHealthStatus = pb.HealthStatus.HEALTH_STATUS_NORMAL;

      final response = await stub.reportAngleLearning(request);
      print('  ✓ 节点(${data['x']},${data['y']}): ${data['angle']}° (车辆${data['carId']}) - ${response.message}');
      
      await Future.delayed(Duration(milliseconds: 100));
    }

    print('\n✅ 所有数据已上报！');
    
    // 验证数据
    print('\n📊 验证数据...');
    final stats = await stub.getAngleLearningStatistics(Empty());
    print('  - 总位置数: ${stats.totalLocations}');
    print('  - 总样本数: ${stats.totalSamples}');
    print('  - 参与车辆: ${stats.totalVehicles}');
    
    // 获取所有位置
    final locations = await stub.getAllAngleLearningLocations(Empty());
    print('\n📍 学习位置 (${locations.totalCount} 个):');
    for (var location in locations.locations) {
      print('  - 位置(${location.logicLocation.localX},${location.logicLocation.localY}): ${location.learnedAngle.toStringAsFixed(2)}°');
    }
    
  } catch (e) {
    print('❌ 错误: $e');
  } finally {
    await channel.shutdown();
  }
}
