# Flutter Web + gRPC-Web 配置指南

## 概述

本项目已支持 Web 平台的 gRPC 通信。由于浏览器安全限制，Web 平台需要使用 **gRPC-Web** 协议，而不是原生的 gRPC。

## 架构说明

```
Flutter Web App (浏览器)
      ↓ gRPC-Web (HTTP/1.1 或 HTTP/2)
gRPC-Web 代理 (Envoy/nginx)
      ↓ gRPC (HTTP/2)
后端 gRPC 服务器
```

## 快速开始

### 1. 安装依赖

```bash
flutter pub get
```

### 2. 配置 gRPC-Web 代理 (Envoy)

#### 方法 A: 使用 Docker (推荐)

创建 `envoy.yaml` 配置文件：

```yaml
static_resources:
  listeners:
  - name: listener_0
    address:
      socket_address:
        address: 0.0.0.0
        port_value: 8080
    filter_chains:
    - filters:
      - name: envoy.filters.network.http_connection_manager
        typed_config:
          "@type": type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager
          codec_type: auto
          stat_prefix: ingress_http
          route_config:
            name: local_route
            virtual_hosts:
            - name: local_service
              domains: ["*"]
              routes:
              - match:
                  prefix: "/"
                route:
                  cluster: grpc_service
                  timeout: 0s
                  max_stream_duration:
                    grpc_timeout_header_max: 0s
              cors:
                allow_origin_string_match:
                - prefix: "*"
                allow_methods: GET, PUT, DELETE, POST, OPTIONS
                allow_headers: keep-alive,user-agent,cache-control,content-type,content-transfer-encoding,custom-header-1,x-accept-content-transfer-encoding,x-accept-response-streaming,x-user-agent,x-grpc-web,grpc-timeout
                max_age: "1728000"
                expose_headers: custom-header-1,grpc-status,grpc-message
          http_filters:
          - name: envoy.filters.http.grpc_web
            typed_config:
              "@type": type.googleapis.com/envoy.extensions.filters.http.grpc_web.v3.GrpcWeb
          - name: envoy.filters.http.cors
            typed_config:
              "@type": type.googleapis.com/envoy.extensions.filters.http.cors.v3.Cors
          - name: envoy.filters.http.router
            typed_config:
              "@type": type.googleapis.com/envoy.extensions.filters.http.router.v3.Router

  clusters:
  - name: grpc_service
    connect_timeout: 0.25s
    type: logical_dns
    http2_protocol_options: {}
    lb_policy: round_robin
    load_assignment:
      cluster_name: grpc_service
      endpoints:
      - lb_endpoints:
        - endpoint:
            address:
              socket_address:
                address: localhost
                port_value: 50051
```

启动 Envoy 代理：

```bash
docker run -d -p 8080:8080 \
  -v "$(pwd)/envoy.yaml:/etc/envoy/envoy.yaml" \
  envoyproxy/envoy:v1.28-latest
```

#### 方法 B: 使用本地 Envoy

1. 下载并安装 Envoy: https://www.envoyproxy.io/docs/envoy/latest/start/install
2. 使用上面的配置文件启动: `envoy -c envoy.yaml`

### 3. 启动后端 gRPC 服务器

```bash
# Python 示例
python grpc_server_example.py
```

确保服务器运行在 `localhost:50051`

### 4. 运行 Flutter Web 应用

```bash
# 开发模式
flutter run -d chrome

# 或者构建生产版本
flutter build web
```

## 代码使用示例

### 基础连接

```dart
import 'package:my_flutter_app/site_health_grpc_client_platform.dart';
import 'package:my_flutter_app/grpc_config.dart';

// 创建客户端实例
final client = SiteHealthGrpcClientPlatform();

// 连接到服务器（自动适配平台）
await client.connect(
  GrpcConfig.host,
  GrpcConfig.currentPort,  // Web 使用 8080, 原生使用 50051
  useSecure: GrpcConfig.useSecure,
);

// 使用 gRPC 服务
final stats = await client.getHealthStatistics();
print('总节点: ${stats.totalNodes}');

// 断开连接
await client.disconnect();
```

### 实时数据流

```dart
// 订阅健康状态更新
final stream = client.subscribeHealthStatus();

stream.listen(
  (update) {
    print('收到更新: ${update.siteId}');
  },
  onError: (error) {
    print('流错误: $error');
  },
  onDone: () {
    print('流结束');
  },
);
```

## 配置选项

在 [lib/grpc_config.dart](lib/grpc_config.dart) 中修改配置：

```dart
class GrpcConfig {
  static const String host = 'localhost';  // 服务器地址
  static const int port = 50051;           // 原生平台端口
  static const int webPort = 8080;         // Web 平台端口 (Envoy)
  static const bool useSecure = false;     // 是否使用 HTTPS/TLS
}
```

### 生产环境配置

对于生产环境，修改为：

```dart
static const String host = 'api.yourcompany.com';
static const int webPort = 443;
static const bool useSecure = true;
```

## 平台检测

客户端会自动检测运行平台：

- **Web 平台**: 使用 `http://localhost:8080` (gRPC-Web 代理)
- **原生平台**: 使用 `localhost:50051` (直接 gRPC)

## 故障排查

### 1. 连接失败 (Web)

**问题**: `Connection refused` 或 `net::ERR_CONNECTION_REFUSED`

**解决方案**:
- 确认 Envoy 代理正在运行: `curl http://localhost:8080`
- 检查 Envoy 配置文件中的端口映射
- 查看浏览器开发者工具的网络标签

### 2. CORS 错误

**问题**: `Access-Control-Allow-Origin` 错误

**解决方案**:
- 确保 Envoy 配置中启用了 CORS
- 检查 `allow_origin_string_match` 配置
- 对于开发环境，可以使用 `"*"` 允许所有源

### 3. gRPC 服务器无响应

**问题**: Envoy 运行但无法连接到后端

**解决方案**:
- 确认后端 gRPC 服务器运行在正确的端口
- 检查 Envoy 配置中的 `socket_address`
- 查看 Envoy 日志: `docker logs <container_id>`

### 4. 方法未找到

**问题**: `Unimplemented` 或 `Method not found`

**解决方案**:
- 确认 proto 文件已正确生成
- 重新生成 Dart 代码: `./regenerate_proto.sh`
- 确保服务器实现了所有 proto 定义的方法

## 性能优化

### 1. 启用压缩

```dart
_channel = ClientChannel(
  host,
  port: port,
  options: ChannelOptions(
    // ...
    codecRegistry: CodecRegistry(codecs: const [GzipCodec()]),
  ),
);
```

### 2. 连接池

对于频繁请求，保持连接打开而不是每次都重新连接。

### 3. 超时设置

```dart
final response = await stub.getHealthStatistics(
  Empty(),
  options: CallOptions(timeout: Duration(seconds: 5)),
);
```

## 部署建议

### Nginx 作为 gRPC-Web 代理

如果使用 Nginx (1.13.10+):

```nginx
server {
    listen 8080 http2;
    
    location / {
        grpc_pass grpc://localhost:50051;
        
        # CORS headers
        add_header Access-Control-Allow-Origin *;
        add_header Access-Control-Allow-Methods "GET, POST, OPTIONS";
        add_header Access-Control-Allow-Headers "content-type,x-grpc-web,x-user-agent";
        
        if ($request_method = 'OPTIONS') {
            return 204;
        }
    }
}
```

### Kubernetes 部署

使用 Envoy 作为 Sidecar 代理，配置在 K8s 服务前。

## 相关资源

- [gRPC-Web 官方文档](https://github.com/grpc/grpc-web)
- [Envoy 代理文档](https://www.envoyproxy.io/docs/envoy/latest/)
- [Flutter Web 文档](https://docs.flutter.dev/platform-integration/web)
- [Protocol Buffers](https://developers.google.com/protocol-buffers)

## 常见问题

**Q: Web 版本能用原生 gRPC 吗？**  
A: 不能。浏览器不支持 HTTP/2 的原生 gRPC 调用，必须使用 gRPC-Web。

**Q: 需要修改 proto 文件吗？**  
A: 不需要。proto 文件保持不变，只是传输协议不同。

**Q: 性能有差异吗？**  
A: gRPC-Web 比原生 gRPC 稍慢，但对大多数应用影响不大。

**Q: 可以不用 Envoy 吗？**  
A: 可以使用 Nginx (1.13.10+) 或其他支持 gRPC-Web 的代理。

## 测试

运行集成测试：

```bash
# 确保服务器和 Envoy 都在运行
flutter test integration_test/grpc_web_test.dart
```

## 支持

如有问题，请查看：
- [项目文档](README.md)
- [gRPC 配置指南](GRPC_SETUP_GUIDE.md)
- [快速开始](QUICKSTART.md)
