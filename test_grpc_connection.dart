#!/usr/bin/env dart

// 简单的 gRPC 测试脚本
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
    // 测试连接
    print('✅ 已连接，测试获取统计信息...');
    
    final stats = await stub.getAngleLearningStatistics(Empty());
    print('📊 角度学习统计:');
    print('  - 总位置数: ${stats.totalLocations}');
    print('  - 完成数: ${stats.completedLocations}');
    print('  - 收集中: ${stats.collectingLocations}');
    print('  - 总样本: ${stats.totalSamples}');
    
    // 批量查询
    print('\n📦 批量查询角度学习结果...');
    final batchRequest = pb.BatchQueryAngleLearningRequest();
    final batchResponse = await stub.batchQueryAngleLearning(batchRequest);
    
    print('返回 ${batchResponse.results.length} 个结果:');
    batchResponse.results.forEach((key, value) {
      if (value.hasGlobalLearning()) {
        final g = value.globalLearning;
        print('  ✓ 位置($key): 角度=${g.learnedAngle.toStringAsFixed(2)}°, 样本=${g.sampleCount}, 置信度=${(g.confidence*100).toStringAsFixed(1)}%');
      }
    });
    
  } catch (e) {
    print('❌ 错误: $e');
  } finally {
    await channel.shutdown();
    print('\n✅ 测试完成');
    exit(0);
  }
}
