#!/usr/bin/env python3
"""
简单的 gRPC 服务器 - 实现 SiteHealthService
快速启动用于测试
"""

import grpc
from concurrent import futures
import sys
import os

# 添加生成的代码路径
sys.path.append(os.path.join(os.path.dirname(__file__), 'python_generated'))

try:
    from site_health_pb2 import *
    from site_health_pb2_grpc import *
    from google.protobuf.empty_pb2 import Empty
    from google.protobuf.timestamp_pb2 import Timestamp
    from types_pb2 import HealthStatus
    print("✓ 成功导入 proto 文件")
except ImportError as e:
    print(f"✗ 导入失败: {e}")
    print("请先运行: ./generate_dart_grpc.sh")
    sys.exit(1)

class SimpleSiteHealthService(SiteHealthServiceServicer):
    """简单的场地健康服务实现"""
    
    def GetHealthStatistics(self, request, context):
        """获取健康统计信息"""
        print("📊 收到 GetHealthStatistics 请求")
        
        # 创建模拟数据
        stats = HealthStatistics(
            total_nodes=150,
            normal_nodes=120,
            warning_nodes=20,
            error_nodes=8,
            critical_nodes=2,
            offline_nodes=0,
            overall_health_score=85.5,
        )
        
        # 添加每台车的异常统计
        for car_id in range(1, 9):
            exception_count = 0 if car_id <= 5 else (car_id - 5)
            stats.per_car_exception_counts.append(
                PerCarExceptionCount(
                    car_id=car_id,
                    exception_count=exception_count,
                )
            )
        
        print(f"✓ 返回数据: {stats.total_nodes} 个节点")
        return stats
    
    def SubscribeHealthStatus(self, request, context):
        """订阅健康状态变化（流式）"""
        print("🔄 客户端订阅健康状态")
        import time
        import random
        
        counter = 0
        while context.is_active():
            counter += 1
            # 模拟发送健康状态更新
            info = SiteHealthInfo()
            
            # 每5秒发送一次更新
            if counter % 2 == 0:
                # 发送二维码健康数据
                marker = info.marker_health
                marker.node_id = random.randint(1, 150)
                marker.car_id = random.randint(1, 8)
                marker.health_status = HealthStatus.HEALTH_STATUS_NORMAL if random.random() > 0.3 else HealthStatus.HEALTH_STATUS_WARNING
            
            yield info
            time.sleep(5)
    
    def QueryHealthInfo(self, request, context):
        """查询健康信息"""
        print("🔍 收到 QueryHealthInfo 请求")
        
        response = HealthInfoQueryResponse()
        
        # 添加一些模拟的二维码健康数据
        for i in range(10):
            marker = response.marker_healths.add()
            marker.node_id = 100 + i
            marker.car_id = (i % 8) + 1
            marker.health_status = HealthStatus.HEALTH_STATUS_NORMAL
        
        print(f"✓ 返回 {len(response.marker_healths)} 条数据")
        return response


def serve():
    """启动 gRPC 服务器"""
    server = grpc.server(
        futures.ThreadPoolExecutor(max_workers=10),
        options=[
            ('grpc.max_send_message_length', 50 * 1024 * 1024),
            ('grpc.max_receive_message_length', 50 * 1024 * 1024),
        ]
    )
    
    # 注册服务
    add_SiteHealthServiceServicer_to_server(SimpleSiteHealthService(), server)
    
    # 监听所有网络接口
    port = 50051
    server.add_insecure_port(f'0.0.0.0:{port}')
    
    # 启动服务器
    server.start()
    
    print("=" * 60)
    print("🚀 gRPC 服务器启动成功！")
    print("=" * 60)
    print(f"📡 监听端口: {port}")
    print(f"🔗 本地地址: localhost:{port}")
    print(f"🌐 网络地址: 0.0.0.0:{port} (可通过IP访问)")
    print()
    print("已实现的方法:")
    print("  - GetHealthStatistics")
    print("  - SubscribeHealthStatus")
    print("  - QueryHealthInfo")
    print()
    print("按 Ctrl+C 停止服务器")
    print("=" * 60)
    
    try:
        server.wait_for_termination()
    except KeyboardInterrupt:
        print("\n\n🛑 正在停止服务器...")
        server.stop(0)
        print("✓ 服务器已停止")


if __name__ == '__main__':
    serve()
