#!/usr/bin/env python3
"""
简单的 gRPC 服务器示例
用于演示与 Flutter 应用的集成

依赖:
pip install grpcio grpcio-tools protobuf
"""

from concurrent import futures
import grpc
import time
import random
from datetime import datetime

# 模拟服务器实现
class SiteHealthServicer:
    """场地健康监控 gRPC 服务"""
    
    def GetRealtimeAlerts(self, request, context):
        """实时告警流"""
        while True:
            alert_types = ['地面不平', '二维码污损', '间距不准', '二维码贴歪']
            levels = ['high', 'medium', 'low']
            
            alert = {
                'time': datetime.now().strftime('%H:%M'),
                'type': random.choice(alert_types),
                'location': f'路径P-{random.randint(1, 20)}',
                'vehicles': f'AGV-{random.randint(1, 8):02d}',
                'level': random.choice(levels)
            }
            
            print(f"发送告警: {alert}")
            # 实际实现中，这里应该 yield proto message
            time.sleep(5)
    
    def GetRealtimeVehicleStatus(self, request, context):
        """实时车辆状态流"""
        while True:
            vehicles = []
            for i in range(1, 9):
                status = random.choice(['运行中', '运行中', '运行中', '异常', '警告'])
                health = random.randint(65, 98)
                
                vehicle = {
                    'id': f'AGV-{i:02d}',
                    'status': status,
                    'condition': '正常' if status == '运行中' else '需检查',
                    'healthScore': health,
                    'location': f'S-{random.randint(1, 20):02d}',
                    'exception': '无异常' if status == '运行中' else 'kError'
                }
                vehicles.append(vehicle)
            
            print(f"发送车辆数据: {len(vehicles)} 辆")
            # 实际实现中，这里应该 yield proto message
            time.sleep(3)
    
    def GetRealtimeMetrics(self, request, context):
        """实时指标流"""
        while True:
            metrics = {
                'normalVehicles': random.randint(10, 14),
                'abnormalVehicles': random.randint(1, 4),
                'qrCodeAnomalies': random.randint(5, 10),
                'groundAnomalies': random.randint(2, 5)
            }
            
            print(f"发送指标: {metrics}")
            # 实际实现中，这里应该 yield proto message
            time.sleep(2)


def serve():
    """启动 gRPC 服务器"""
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    
    # 注意：这是简化的示例代码
    # 实际应该使用 protobuf 生成的服务端代码
    # server.add_SiteHealthServicer_to_server(SiteHealthServicer(), server)
    
    server.add_insecure_port('[::]:50051')
    server.start()
    
    print('=' * 60)
    print('gRPC 服务器已启动')
    print('监听端口: 50051')
    print('=' * 60)
    print('\n等待 Flutter 客户端连接...\n')
    
    try:
        server.wait_for_termination()
    except KeyboardInterrupt:
        print('\n正在关闭服务器...')
        server.stop(0)


if __name__ == '__main__':
    print("""
    ╔════════════════════════════════════════════════════════════╗
    ║           场地健康监控系统 - gRPC 服务器示例              ║
    ╚════════════════════════════════════════════════════════════╝
    
    这是一个简化的示例服务器。
    要完整实现，需要：
    
    1. 定义 .proto 文件
    2. 使用 protoc 生成 Python 服务端代码
    3. 实现具体的业务逻辑
    4. 连接到实际的数据源
    
    当前 Flutter 应用会自动使用模拟数据。
    """)
    
    serve()
