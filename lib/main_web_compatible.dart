import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

// 使用跨平台 gRPC 客户端
import 'site_health_grpc_client_platform.dart';
import 'site_health_grpc_service.dart' show VehicleStatusData;
import 'site_health_service_example.dart';
import 'grpc_config.dart';
import 'generated/site_health.pbgrpc.dart' as pb;
import 'generated/site_health.pbenum.dart';

void main() {
  runApp(const SiteHealthApp());
}

class SiteHealthApp extends StatelessWidget {
  const SiteHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '场地健康监控系统',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const SiteHealthDashboard(),
    );
  }
}

class SiteHealthDashboard extends StatefulWidget {
  const SiteHealthDashboard({super.key});

  @override
  State<SiteHealthDashboard> createState() => _SiteHealthDashboardState();
}

class _SiteHealthDashboardState extends State<SiteHealthDashboard> {
  int _selectedIndex = 0;
  // 使用跨平台 gRPC 客户端（自动适配 Web/Native）
  late final SiteHealthGrpcClientPlatform _grpcService;

  late final List<Widget> _pages;
  bool _isConnecting = true;
  String _connectionStatus = '正在连接...';

  @override
  void initState() {
    super.initState();
    _grpcService = SiteHealthGrpcClientPlatform();
    
    // 显示平台信息
    final platform = kIsWeb ? 'Web (gRPC-Web)' : '原生平台 (gRPC)';
    print('🚀 运行在: $platform');
    
    _pages = [
      OverviewPage(grpcService: _grpcService),
      SiteListPage(grpcService: _grpcService),
      VehicleMonitorPage(grpcService: _grpcService),
    ];
    _connectToGrpc();
  }

  Future<void> _connectToGrpc() async {
    try {
      setState(() {
        _isConnecting = true;
        _connectionStatus = kIsWeb 
            ? '正在连接到 gRPC-Web 代理...' 
            : '正在连接到 gRPC 服务器...';
      });

      // 使用配置中的地址和端口（自动适配平台）
      await _grpcService.connect(
        GrpcConfig.host,
        GrpcConfig.currentPort,  // Web: 8080, Native: 50051
        useSecure: GrpcConfig.useSecure,
      );

      if (mounted) {
        setState(() {
          _isConnecting = false;
          _connectionStatus = kIsWeb 
              ? '✓ 已连接到 ${GrpcConfig.host}:${GrpcConfig.webPort} (gRPC-Web)' 
              : '✓ 已连接到 ${GrpcConfig.host}:${GrpcConfig.port}';
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isConnecting = false;
          _connectionStatus = '✗ 连接失败: $e';
        });
        
        // 显示错误提示
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(kIsWeb 
                ? 'gRPC-Web 连接失败，请确保 Envoy 代理正在运行 (端口 ${GrpcConfig.webPort})'
                : 'gRPC 连接失败: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
            action: SnackBarAction(
              label: '重试',
              textColor: Colors.white,
              onPressed: _connectToGrpc,
            ),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _grpcService.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('场地健康监控系统'),
            const SizedBox(width: 16),
            // 显示平台标识
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: kIsWeb ? Colors.blue.shade700 : Colors.green.shade700,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                kIsWeb ? 'WEB' : 'NATIVE',
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: [
          // 连接状态指示器
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    _isConnecting
                        ? Icons.sync
                        : _grpcService.isConnected
                            ? Icons.check_circle
                            : Icons.error,
                    color: _isConnecting
                        ? Colors.orange
                        : _grpcService.isConnected
                            ? Colors.green
                            : Colors.red,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _connectionStatus,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          // 重新连接按钮
          if (!_grpcService.isConnected && !_isConnecting)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _connectToGrpc,
              tooltip: '重新连接',
            ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: '概览',
          ),
          NavigationDestination(
            icon: Icon(Icons.location_city),
            label: '场地',
          ),
          NavigationDestination(
            icon: Icon(Icons.directions_car),
            label: '车辆',
          ),
        ],
      ),
    );
  }
}

// 其余代码保持不变，从原 main.dart 复制...
// 为了简洁，这里只展示了主要的改动部分
// 完整的 OverviewPage, SiteListPage, VehicleMonitorPage 等类应该从原文件复制过来
