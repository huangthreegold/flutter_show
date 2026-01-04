#!/usr/bin/env dart

// 测试新的 GetAllAngleLearningLocations 接口
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'lib/generated/site_health.pbgrpc.dart' as pb;
import 'lib/generated/google/protobuf/empty.pb.dart';

void main() async {
  print('📡 连接到 gRPC 服务器 localhost:50051...');
  
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = pb.SiteHealthServiceClient(channel);

  try {
    print('✅ 已连接，测试新接口...\n');
    
    // 测试统计信息
    final stats = await stub.getAngleLearningStatistics(Empty());
    print('📊 角度学习统计:');
    print('  - 总位置数: ${stats.totalLocations}');
    print('  - 完成数: ${stats.completedLocations}');
    print('  - 收集中: ${stats.collectingLocations}');
    print('  - 总样本: ${stats.totalSamples}');
    print('  - 参与车辆: ${stats.totalVehicles}');
    
    // 测试新接口：获取所有角度学习位置
    print('\n🌟 测试 GetAllAngleLearningLocations 接口...');
    final locationsResponse = await stub.getAllAngleLearningLocations(Empty());
    
    print('✅ 返回 ${locationsResponse.totalCount} 个位置:\n');
    for (var location in locationsResponse.locations) {
      print('  📍 位置(${location.logicLocation.localX},${location.logicLocation.localY}):');
      print('     - 角度: ${location.learnedAngle.toStringAsFixed(2)}°');
      print('     - 置信度: ${(location.confidence * 100).toStringAsFixed(1)}%');
      print('     - 样本数: ${location.sampleCount}');
      print('     - 车辆数: ${location.vehicleCount}');
      print('     - 状态: ${location.status}');
      print('');
    }
    
  } catch (e) {
    print('❌ 错误: $e');
  } finally {
    await channel.shutdown();
    print('✅ 测试完成');
    exit(0);
  }
}
