import 'package:flutter/foundation.dart' show kIsWeb;

/// gRPC 服务器配置
/// 在这里配置你的 gRPC 服务器地址和端口
class GrpcConfig {
  // gRPC 服务器主机地址
  // 本地开发: 'localhost' 或 '127.0.0.1'
  // 远程服务器: '192.168.1.100' 或域名 'api.yourcompany.com'
  static const String host = '192.168.1.143';

  // gRPC 服务器端口（原生平台）
  static const int port = 50051;

  // Web 平台使用的 HTTP 端口（需要 gRPC-Web 代理，如 Envoy）
  // 通常使用 8080 或与 Web 服务相同的端口
  static const int webPort = 8080;

  // 连接超时时间（秒）
  static const int connectionTimeout = 5;

  // 是否使用 TLS/SSL 加密连接
  static const bool useSecure = false;

  /// 获取当前平台适用的端口
  static int get currentPort => kIsWeb ? webPort : port;

  /// 获取当前平台适用的 URL
  static String get currentUrl {
    if (kIsWeb) {
      // Web 平台使用 HTTP/HTTPS 协议
      final protocol = useSecure ? 'https' : 'http';
      return '$protocol://$host:$webPort';
    } else {
      // 原生平台直接返回 host
      return host;
    }
  }
}
