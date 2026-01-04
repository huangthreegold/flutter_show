import 'dart:async';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';
// 导入原有服务的所有方法
import 'site_health_real_grpc_service.dart';

/// Web 兼容的 gRPC 客户端
/// 在 Web 平台使用 gRPC-Web，在原生平台使用标准 gRPC
class SiteHealthWebGrpcClient extends SiteHealthRealGrpcService {
  @override
  Future<void> connect(String host, int port) async {
    if (kIsWeb) {
      // Web 平台：使用 gRPC-Web
      print('🌐 Web 平台：尝试连接 gRPC-Web $host:$port');
      
      // 在 Web 平台，直接调用父类方法但使用不同的 channel
      try {
        final uri = Uri.parse('http://$host:$port');
        channel = GrpcWebClientChannel.xhr(uri);
        
        // 创建 stub
        stub = createStub(channel);
        
        print('✓ gRPC-Web 连接成功');
      } catch (e) {
        print('✗ gRPC-Web 连接失败: $e');
        rethrow;
      }
    } else {
      // 原生平台：使用标准 gRPC
      print('📱 原生平台：连接 gRPC 服务器 $host:$port');
      await super.connect(host, port);
    }
  }
}
