import 'package:flutter/material.dart';

// 方式 1: 使用模拟数据（用于开发测试）
// import 'site_health_grpc_service.dart';

// 方式 2: 使用真实 gRPC 连接（用于生产环境）
import 'site_health_real_grpc_service.dart';

void main() {
  runApp(const SiteHealthApp());
}

class SiteHealthApp extends StatelessWidget {
  const SiteHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '场地健康监控系统',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
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
  
  // 使用真实 gRPC 服务
  late final SiteHealthRealGrpcService _grpcService;
  
  // 如果要使用模拟数据，改为:
  // late final SiteHealthGrpcService _grpcService;
  
  late final List<Widget> _pages;
  bool _isConnecting = true;
  String _connectionStatus = '正在连接...';

  @override
  void initState() {
    super.initState();
    
    // 初始化真实 gRPC 服务
    _grpcService = SiteHealthRealGrpcService();
    
    // 如果使用模拟数据，改为:
    // _grpcService = SiteHealthGrpcService();
    
    // 连接到 gRPC 服务器
    // TODO: 替换为你的服务器地址和端口
    _connectToServer();
    
    _pages = [
      OverviewPageWithRealGrpc(grpcService: _grpcService),
      const QRCodeAnalysisPage(),
      const GroundAnalysisPage(),
      VehicleStatusPageWithRealGrpc(grpcService: _grpcService),
      const ReportsPage(),
    ];
  }

  Future<void> _connectToServer() async {
    try {
      // 连接到服务器 - 修改为你的服务器地址
      await _grpcService.connect('localhost', 50051);
      
      setState(() {
        _isConnecting = false;
        _connectionStatus = '✓ 已连接到 gRPC 服务器';
      });
      
      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✓ 已连接到 gRPC 服务器，正在获取实时数据'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (error) {
      setState(() {
        _isConnecting = false;
        _connectionStatus = '✗ 连接失败: $error';
      });
      
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('连接失败: $error\n请检查服务器是否运行'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
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
        title: const Text('场地健康监控系统'),
        centerTitle: true,
        elevation: 2,
        actions: [
          // 连接状态指示器
          if (_isConnecting)
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          else
            IconButton(
              icon: Icon(
                _grpcService.isConnected ? Icons.cloud_done : Icons.cloud_off,
                color: _grpcService.isConnected ? Colors.green : Colors.red,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('连接状态'),
                    content: Text(_connectionStatus),
                    actions: [
                      if (!_grpcService.isConnected)
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            setState(() {
                              _isConnecting = true;
                            });
                            _connectToServer();
                          },
                          child: const Text('重新连接'),
                        ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('关闭'),
                      ),
                    ],
                  ),
                );
              },
              tooltip: _connectionStatus,
            ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // TODO: 显示通知
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // TODO: 刷新数据
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '概览',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: '二维码异常',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            label: '地面异常',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: '车辆状态',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '报告',
          ),
        ],
      ),
    );
  }
}

// ==================== 使用真实 gRPC 的概览页面 ====================
class OverviewPageWithRealGrpc extends StatelessWidget {
  final SiteHealthRealGrpcService grpcService;

  const OverviewPageWithRealGrpc({super.key, required this.grpcService});

  @override
  Widget build(BuildContext context) {
    if (!grpcService.isConnected) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_off, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text('未连接到服务器', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('请检查网络连接和服务器状态'),
          ],
        ),
      );
    }

    return StreamBuilder<Map<String, int>>(
      stream: grpcService.getRealtimeMetrics(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('错误: ${snapshot.error}'));
        }
        
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final metrics = snapshot.data!;
        
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '实时概览',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _MetricCard(
                      title: '正常车辆',
                      value: '${metrics['normalVehicles']}',
                      color: Colors.green,
                      icon: Icons.check_circle,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _MetricCard(
                      title: '异常车辆',
                      value: '${metrics['abnormalVehicles']}',
                      color: Colors.orange,
                      icon: Icons.warning,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _MetricCard(
                      title: '二维码异常',
                      value: '${metrics['qrCodeAnomalies']}',
                      color: Colors.blue,
                      icon: Icons.qr_code,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _MetricCard(
                      title: '地面异常',
                      value: '${metrics['groundAnomalies']}',
                      color: Colors.red,
                      icon: Icons.landscape,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final IconData icon;

  const _MetricCard({
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(title, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

// ==================== 使用真实 gRPC 的车辆状态页面 ====================
class VehicleStatusPageWithRealGrpc extends StatelessWidget {
  final SiteHealthRealGrpcService grpcService;

  const VehicleStatusPageWithRealGrpc({super.key, required this.grpcService});

  @override
  Widget build(BuildContext context) {
    if (!grpcService.isConnected) {
      return const Center(child: Text('未连接到服务器'));
    }

    return StreamBuilder(
      stream: grpcService.getRealtimeVehicleStatus(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final vehicles = snapshot.data!;
        
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: vehicles.length,
          itemBuilder: (context, index) {
            final vehicle = vehicles[index];
            return Card(
              child: ListTile(
                leading: Icon(
                  Icons.directions_car,
                  color: vehicle.status == '运行中' ? Colors.green : Colors.red,
                ),
                title: Text(vehicle.id),
                subtitle: Text('${vehicle.condition} • ${vehicle.location}'),
                trailing: Text(
                  '${vehicle.healthScore}%',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

// ==================== 占位页面（保持原有功能）====================
class QRCodeAnalysisPage extends StatelessWidget {
  const QRCodeAnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('二维码异常分析'));
  }
}

class GroundAnalysisPage extends StatelessWidget {
  const GroundAnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('地面异常分析'));
  }
}

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('报告'));
  }
}
