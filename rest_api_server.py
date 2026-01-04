#!/usr/bin/env python3
"""
HTTP REST API 服务器
适用于 Web 客户端，无需 gRPC-Web 代理
"""

from http.server import HTTPServer, BaseHTTPRequestHandler
import json
from datetime import datetime

class APIHandler(BaseHTTPRequestHandler):
    
    def _set_headers(self, status=200):
        self.send_response(status)
        self.send_header('Content-type', 'application/json')
        # CORS 支持
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        self.end_headers()
    
    def do_OPTIONS(self):
        """处理 CORS 预检请求"""
        self._set_headers()
    
    def do_GET(self):
        """处理 GET 请求"""
        
        if self.path == '/api/health/statistics':
            # 健康统计
            data = {
                'totalNodes': 150,
                'healthyNodes': 120,
                'warningNodes': 20,
                'errorNodes': 8,
                'offlineNodes': 2,
            }
            self._set_headers()
            self.wfile.write(json.dumps(data).encode())
        
        elif self.path == '/api/sites':
            # 场地列表
            data = {
                'sites': [
                    {
                        'id': 'site1',
                        'name': '北京站点',
                        'location': '北京市朝阳区',
                        'healthStatus': 'HEALTHY',
                        'totalVehicles': 50,
                        'activeVehicles': 45,
                    },
                    {
                        'id': 'site2',
                        'name': '上海站点',
                        'location': '上海市浦东新区',
                        'healthStatus': 'WARNING',
                        'totalVehicles': 40,
                        'activeVehicles': 32,
                    }
                ]
            }
            self._set_headers()
            self.wfile.write(json.dumps(data).encode())
        
        elif self.path == '/api/ping':
            # 心跳
            data = {
                'timestamp': datetime.now().isoformat(),
                'message': 'pong'
            }
            self._set_headers()
            self.wfile.write(json.dumps(data).encode())
        
        else:
            self._set_headers(404)
            self.wfile.write(json.dumps({'error': 'Not found'}).encode())

def run_server(port=8080):
    server = HTTPServer(('localhost', port), APIHandler)
    print("=" * 60)
    print("🌐 REST API 服务器启动成功！")
    print("=" * 60)
    print(f"📡 监听端口: {port}")
    print(f"🔗 地址: http://localhost:{port}")
    print()
    print("可用 API:")
    print(f"  GET http://localhost:{port}/api/health/statistics")
    print(f"  GET http://localhost:{port}/api/sites")
    print(f"  GET http://localhost:{port}/api/ping")
    print()
    print("✅ 无需代理，浏览器可直接访问")
    print("按 Ctrl+C 停止服务器")
    print("=" * 60)
    
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n\n🛑 正在停止服务器...")
        server.shutdown()
        print("✓ 服务器已停止")

if __name__ == '__main__':
    run_server()
