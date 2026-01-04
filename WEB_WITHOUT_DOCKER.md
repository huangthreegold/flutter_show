# 不使用 Docker 运行 Web 版本的替代方案

如果你的系统没有安装 Docker，有以下几种方式运行 Web 版本：

## 选项 1: 使用系统安装的 Envoy（推荐）

### 在 Linux 上安装 Envoy

```bash
# Ubuntu/Debian
curl -sL 'https://deb.dl.getenvoy.io/public/gpg.8115BA8E629CC074.key' | sudo gpg --dearmor -o /usr/share/keyrings/getenvoy-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/getenvoy-keyring.gpg] https://deb.dl.getenvoy.io/public/deb/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/getenvoy.list
sudo apt update && sudo apt install -y getenvoy-envoy

# 运行 Envoy
envoy -c envoy.yaml
```

## 选项 2: 使用 Nginx（如果已安装 Nginx 1.13.10+）

创建 `nginx.conf`:

```nginx
events {
    worker_connections 1024;
}

http {
    upstream grpc_backend {
        server localhost:50051;
    }

    server {
        listen 8080 http2;
        
        location / {
            grpc_pass grpc://grpc_backend;
            
            # CORS 配置
            add_header Access-Control-Allow-Origin *;
            add_header Access-Control-Allow-Methods "GET, POST, OPTIONS";
            add_header Access-Control-Allow-Headers "content-type,x-grpc-web,x-user-agent";
            
            if ($request_method = 'OPTIONS') {
                return 204;
            }
        }
    }
}
```

运行:
```bash
nginx -c $(pwd)/nginx.conf
```

## 选项 3: 修改代码直接连接（仅用于开发测试）

**⚠️ 注意**: 这种方法有浏览器限制，不推荐用于生产。

修改 `lib/grpc_config.dart`:

```dart
class GrpcConfig {
  static const String host = 'localhost';
  static const int port = 50051;
  static const int webPort = 50051;  // Web 也使用相同端口
  static const bool useSecure = false;
}
```

**限制**: 
- 只支持 HTTP/2 over TLS (需要 HTTPS)
- 需要服务器配置 CORS
- 不支持某些浏览器

## 选项 4: 使用云服务（生产环境）

如果部署到云端：
- Google Cloud: 使用 Cloud Load Balancer（原生支持 gRPC-Web）
- AWS: 使用 Application Load Balancer + gRPC 支持
- Azure: 使用 Application Gateway

## 简化的启动脚本（不使用 Docker）

创建 `start_web_simple.sh`:

```bash
#!/bin/bash

echo "启动 Flutter Web (不使用 Docker)"

# 检查 gRPC 服务器
if ! nc -z localhost 50051 2>/dev/null; then
    echo "⚠️ 请先启动 gRPC 服务器:"
    echo "   python grpc_server_example.py"
    exit 1
fi

echo "✓ gRPC 服务器运行中"

# 提示用户启动代理
echo ""
echo "请确保已启动 gRPC-Web 代理（Envoy 或 Nginx）在端口 8080"
echo ""
read -p "代理已启动？按回车继续..."

# 运行 Flutter Web
flutter run -d chrome
```

## 快速测试（跳过 gRPC-Web）

如果只是想测试 Web 平台能否运行（不测试 gRPC）：

```bash
# 直接运行 Web 版本
flutter run -d chrome

# 应用会启动，但 gRPC 连接会失败
# 可以验证 UI 和其他功能
```

## 推荐方案总结

**开发环境**:
1. 首选: Docker + Envoy (最简单)
2. 备选: 系统安装的 Envoy
3. 临时: 直接测试 UI（跳过 gRPC）

**生产环境**:
- 使用云服务提供商的负载均衡器
- 或在 Kubernetes 中部署 Envoy Sidecar
