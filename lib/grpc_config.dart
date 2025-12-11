/// gRPC 服务器配置
/// 在这里配置你的 gRPC 服务器地址和端口
class GrpcConfig {
  // gRPC 服务器主机地址
  // 本地开发: 'localhost' 或 '127.0.0.1'
  // 远程服务器: '192.168.1.100' 或域名 'api.yourcompany.com'
  static const String host = 'localhost';

  // gRPC 服务器端口
  static const int port = 50051;

  // 连接超时时间（秒）
  static const int connectionTimeout = 5;

  // 是否使用 TLS/SSL 加密连接
  static const bool useSecure = false;
}
