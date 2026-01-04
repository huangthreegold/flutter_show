#!/usr/bin/env python3
"""
模拟 gRPC 服务器 - 用于快速测试
不需要完整的 proto 编译，直接提供 HTTP/REST 兼容接口
"""

from http.server import HTTPServer, BaseHTTPRequestHandler
import json
import random
from datetime import datetime
import threading
import time

class MockGRPCHandler(BaseHTTPRequestHandler):
    """模拟 gRPC-Web 兼容的 HTTP 处理器"""
    
    def do_POST(self):
        """处理 POST 请求"""
        content_length = int(self.headers.get('Content-Length', 0))
        body = self.rfile.read(content_length) if content_length > 0 else b''
        
        path = self.path
        print(f"📨 收到请求: {path}")
        
        # 处理不同的 gRPC 方法
        if 'GetHealthStatistics' in path:
            self.handle_health_statistics()
        elif 'SubscribeHealthStatus' in path:
            self.handle_subscribe()
        elif 'GetRealtimeAlerts' in path:
            self.handle_realtime_alerts()
        else:
            self.send_error(404, f"Unknown method: {path}")
    
    def do_GET(self):
        """处理 GET 请求（用于健康检查）"""
        if self.path == '/health':
            self.send_response(200)
            self.send_header('Content-type', 'application/json')
            self.end_headers()
            self.wfile.write(json.dumps({'status': 'ok'}).encode())
        else:
            self.send_error(404)
    
    def do_OPTIONS(self):
        """处理 OPTIONS 请求（CORS 预检）"""
        self.send_response(200)
        self.send_cors_headers()
        self.end_headers()
    
    def send_cors_headers(self):
        """发送 CORS 头"""
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type, x-grpc-web, x-user-agent')
        self.send_header('Access-Control-Expose-Headers', 'grpc-status, grpc-message')
    
    def handle_health_statistics(self):
        """返回健康统计数据"""
        data = {
            'totalNodes': 150,
            'normalNodes': 120,
            'warningNodes': 20,
            'errorNodes': 8,
            'criticalNodes': 2,
            'offlineNodes': 0,
            'overallHealthScore': 85.5,
            'perCarExceptionCounts': [
                {'carId': i, 'exceptionCount': 0 if i <= 5 else (i - 5)}
                for i in range(1, 9)
            ]
        }
        
        self.send_response(200)
        self.send_cors_headers()
        self.send_header('Content-type', 'application/json')
        self.send_header('grpc-status', '0')
        self.end_headers()
        self.wfile.write(json.dumps(data).encode())
        print(f"✓ 返回健康统计数据")
    
    def handle_subscribe(self):
        """返回订阅数据（模拟流式响应）"""
        # 简化版：返回单个响应
        data = {
            'markerHealth': {
                'nodeId': random.randint(1, 150),
                'carId': random.randint(1, 8),
                'healthStatus': random.choice(['NORMAL', 'WARNING', 'ERROR'])
            }
        }
        
        self.send_response(200)
        self.send_cors_headers()
        self.send_header('Content-type', 'application/json')
        self.send_header('grpc-status', '0')
        self.end_headers()
        self.wfile.write(json.dumps(data).encode())
        print(f"✓ 返回订阅数据")
    
    def handle_realtime_alerts(self):
        """返回实时告警"""
        alerts = [
            {
                'time': datetime.now().strftime('%H:%M'),
                'type': random.choice(['地面不平', '二维码污损', '间距不准', '二维码贴歪']),
                'location': f'路径P-{random.randint(1, 20)}',
                'vehicles': f'AGV-{random.randint(1, 8):02d}',
                'level': random.choice(['high', 'medium', 'low'])
            }
            for _ in range(3)
        ]
        
        self.send_response(200)
        self.send_cors_headers()
        self.send_header('Content-type', 'application/json')
        self.send_header('grpc-status', '0')
        self.end_headers()
        self.wfile.write(json.dumps({'alerts': alerts}).encode())
        print(f"✓ 返回 {len(alerts)} 条告警")
    
    def log_message(self, format, *args):
        """禁用默认日志"""
        pass

def run_server(port=50051):
    """启动服务器"""
    server_address = ('', port)
    httpd = HTTPServer(server_address, MockGRPCHandler)
    
    print("=" * 50)
    print(f"🚀 模拟 gRPC 服务器已启动")
    print(f"📡 监听端口: {port}")
    print("=" * 50)
    print("")
    print("提供的接口:")
    print("  - POST /SiteHealthService/GetHealthStatistics")
    print("  - POST /SiteHealthService/SubscribeHealthStatus")
    print("  - POST /SiteHealthService/GetRealtimeAlerts")
    print("  - GET  /health (健康检查)")
    print("")
    print("按 Ctrl+C 停止服务器")
    print("=" * 50)
    
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n👋 服务器已停止")
        httpd.shutdown()

if __name__ == '__main__':
    run_server()
