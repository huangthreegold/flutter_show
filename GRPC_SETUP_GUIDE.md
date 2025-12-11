# gRPC 集成指南

## 📁 文件结构

```
my_flutter_app/
├── protos/
│   └── site_health.proto          # Protocol Buffers 定义文件
├── lib/
│   └── generated/                 # 生成的 Dart gRPC 代码（自动生成）
│       ├── site_health.pb.dart
│       ├── site_health.pbenum.dart
│       ├── site_health.pbgrpc.dart
│       └── site_health.pbjson.dart
├── generated/                     # 生成的 Python gRPC 代码（自动生成）
│   ├── site_health_pb2.py
│   └── site_health_pb2_grpc.py
├── generate_dart_grpc.sh          # Dart 代码生成脚本
└── generate_python_grpc.py        # Python 代码生成脚本
```

## 🚀 快速开始

### 步骤 1: 安装依赖

#### Flutter 端
```bash
# 安装 protoc (Protocol Buffer 编译器)
# Ubuntu/Debian:
sudo apt-get install protobuf-compiler

# macOS:
brew install protobuf

# 安装 Dart protoc 插件
dart pub global activate protoc_plugin

# 确保 dart 全局包在 PATH 中
export PATH="$PATH:$HOME/.pub-cache/bin"
```

#### Python 端
```bash
# 安装 Python gRPC 工具
pip install grpcio grpcio-tools protobuf
```

### 步骤 2: 生成 gRPC 代码

#### 生成 Dart 代码
```bash
cd /home/threegold/hxx/flutter/site_health/my_flutter_app
./generate_dart_grpc.sh
```

生成的文件将位于 `lib/generated/` 目录。

#### 生成 Python 代码
```bash
cd /home/threegold/hxx/flutter/site_health/my_flutter_app
python3 generate_python_grpc.py
```

生成的文件将位于 `generated/` 目录。

### 步骤 3: 实现 Python gRPC 服务器

创建新的服务器文件 `grpc_server.py`（替代现有的示例文件）：

```python
#!/usr/bin/env python3
import sys
import os

# 添加 generated 目录到 Python 路径
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'generated'))

import grpc
from concurrent import futures
import time
import random
from datetime import datetime

import site_health_pb2
import site_health_pb2_grpc

class SiteHealthService(site_health_pb2_grpc.SiteHealthServiceServicer):
    """场地健康监控服务实现"""
    
    def GetRealtimeAlerts(self, request, context):
        """实时告警流"""
        alert_types = ['地面不平', '二维码污损', '间距不准', '二维码贴歪']
        levels = ['high', 'medium', 'low']
        
        while True:
            alert = site_health_pb2.AlertData(
                time=datetime.now().strftime('%H:%M'),
                type=random.choice(alert_types),
                location=f'路径P-{random.randint(1, 20)}',
                vehicles=f'AGV-{random.randint(1, 8):02d}',
                level=random.choice(levels)
            )
            print(f"发送告警: {alert.type} @ {alert.location}")
            yield alert
            time.sleep(5)
    
    def GetRealtimeVehicleStatus(self, request, context):
        """实时车辆状态流"""
        while True:
            vehicles = []
            for i in range(1, 9):
                status = random.choice(['运行中', '运行中', '运行中', '异常', '警告'])
                vehicle = site_health_pb2.VehicleStatus(
                    id=f'AGV-{i:02d}',
                    status=status,
                    condition='正常' if status == '运行中' else '需检查',
                    health_score=random.randint(65, 98),
                    location=f'S-{random.randint(1, 20):02d}',
                    exception='无异常' if status == '运行中' else 'kError'
                )
                vehicles.append(vehicle)
            
            vehicle_list = site_health_pb2.VehicleStatusList(vehicles=vehicles)
            print(f"发送车辆数据: {len(vehicles)} 辆")
            yield vehicle_list
            time.sleep(3)
    
    def GetRealtimeMetrics(self, request, context):
        """实时指标流"""
        while True:
            metrics = site_health_pb2.MetricsData(
                normal_vehicles=random.randint(10, 14),
                abnormal_vehicles=random.randint(1, 4),
                qr_code_anomalies=random.randint(5, 10),
                ground_anomalies=random.randint(2, 5)
            )
            print(f"发送指标: 正常车辆={metrics.normal_vehicles}")
            yield metrics
            time.sleep(2)

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    site_health_pb2_grpc.add_SiteHealthServiceServicer_to_server(
        SiteHealthService(), server
    )
    server.add_insecure_port('[::]:50051')
    server.start()
    
    print('=' * 60)
    print('✓ gRPC 服务器已启动')
    print('  监听端口: 50051')
    print('=' * 60)
    print('\n等待 Flutter 客户端连接...\n')
    
    try:
        server.wait_for_termination()
    except KeyboardInterrupt:
        print('\n正在关闭服务器...')
        server.stop(0)

if __name__ == '__main__':
    serve()
```

### 步骤 4: 更新 Flutter 客户端

在 `lib/site_health_grpc_service.dart` 中导入生成的代码并实现真实的 gRPC 调用。

### 步骤 5: 运行

#### 启动 Python 服务器
```bash
python3 grpc_server.py
```

#### 运行 Flutter 应用
```bash
flutter run
```

## 📝 注意事项

1. **protoc 版本**: 确保 protoc 版本 >= 3.0
2. **端口冲突**: 确保 50051 端口没被占用
3. **网络**: 如果在移动设备上测试，需要使用实际 IP 而非 localhost
4. **代码重新生成**: 修改 `.proto` 文件后需要重新运行生成脚本

## 🔧 常见问题

### 问题 1: protoc-gen-dart: program not found
```bash
# 解决方法
dart pub global activate protoc_plugin
export PATH="$PATH:$HOME/.pub-cache/bin"
```

### 问题 2: No module named 'site_health_pb2'
```bash
# 解决方法
python3 generate_python_grpc.py
```

### 问题 3: gRPC 连接失败
- 检查服务器是否在运行
- 检查防火墙设置
- 确认 IP 和端口正确

## 📚 相关文档

- [Protocol Buffers 文档](https://developers.google.com/protocol-buffers)
- [gRPC Dart 快速开始](https://grpc.io/docs/languages/dart/quickstart/)
- [gRPC Python 快速开始](https://grpc.io/docs/languages/python/quickstart/)
