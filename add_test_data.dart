#!/usr/bin/env dart

// 添加测试角度学习数据
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'lib/generated/site_health.pbgrpc.dart' as pb;
import 'lib/generated/types.pb.dart' as types;
import 'lib/generated/google/protobuf/timestamp.pb.dart';
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
    // 为不同节点添加样本
    final testData = [
      {'x': 0, 'y': 0, 'angle': 45.5},
      {'x': 0, 'y': 0, 'angle': 45.8},
      {'x': 0, 'y': 0, 'angle': 45.2},
      {'x': 1, 'y': 0, 'angle': 90.1},
      {'x': 1, 'y': 0, 'angle': 90.3},
      {'x': 0, 'y': 1, 'angle': 135.2},
      {'x': 0, 'y': 1, 'angle': 135.5},
      {'x': 1, 'y': 1, 'angle': 180.0},
      {'x': 2, 'y': 0, 'angle': 270.5},
    ];

    print('\n➕ 添加 ${testData.length} 个测试样本...\n');

    for (var i = 0; i < testData.length; i++) {
      final data = testData[i];
      final sample = pb.AngleSample()
        ..carId = Int64(1 + (i % 3))  // 车辆 1-3
        ..carType = 'AGV'
        ..logicLocation = (types.PositionData_t()
          ..localX = Int64(data['x'] as int)
          ..localY = Int64(data['y'] as int))
        ..carHeading = (data['angle']! as double)
        ..movementDirection = (data['angle']! as double)
        ..movementSpeed = 1.0
        ..learnedAngle = (data['angle']! as double)
        ..qualityScore = 0.9
        ..timestamp = (Timestamp()
          ..seconds = Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000)
          ..nanos = (DateTime.now().millisecondsSinceEpoch % 1000) * 1000000);

      await stub.addManualAngleSample(sample);
      print('  ✓ 节点(${data['x']},${data['y']}): ${data['angle']}° (车辆${sample.carId})');
      await Future.delayed(Duration(milliseconds: 100));
    }

    print('\n✅ 所有样本已添加！');
    
    // 验证数据
    print('\n📊 验证数据...');
    final stats = await stub.getAngleLearningStatistics(Empty());
    print('  - 总位置数: ${stats.totalLocations}');
    print('  - 总样本数: ${stats.totalSamples}');
    
  } catch (e) {
    print('❌ 错误: $e');
  } finally {
    await channel.shutdown();
  }
}
