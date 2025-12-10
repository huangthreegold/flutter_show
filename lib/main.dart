import 'package:flutter/material.dart';
import 'site_health_grpc_service.dart';
import 'site_health_models.dart';

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
  late final SiteHealthGrpcService _grpcService;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _grpcService = SiteHealthGrpcService();
    // 初始化 gRPC 连接
    _grpcService.connect('localhost', 50051).catchError((error) {
      print('gRPC 连接失败: $error，将使用模拟数据');
    });
    
    _pages = [
      OverviewPage(grpcService: _grpcService),
      const QRCodeAnalysisPage(),
      const GroundAnalysisPage(),
      VehicleStatusPage(grpcService: _grpcService),
      const ReportsPage(),
    ];
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
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: _showNotifications,
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshData,
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
      floatingActionButton: FloatingActionButton(
        onPressed: _showNewAlert,
        child: const Icon(Icons.warning),
        tooltip: '新告警',
      ),
    );
  }

  void _showNewAlert() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.warning, color: Colors.orange),
            SizedBox(width: 8),
            Text('🚨 发现新异常'),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('检测到路径P-12处有多车报告地面不平异常。'),
            SizedBox(height: 8),
            Text('涉及车辆: AGV-03, AGV-07, AGV-11'),
            SizedBox(height: 8),
            Text('异常等级: 严重'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('稍后处理'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                _selectedIndex = 2; // 跳转到地面异常页面
              });
            },
            child: const Text('立即查看'),
          ),
        ],
      ),
    );
  }

  void _showNotifications() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const NotificationsSheet(),
    );
  }

  void _refreshData() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('数据刷新中...'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}

// ===================== 通知页面 =====================
class NotificationsSheet extends StatelessWidget {
  const NotificationsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '通知中心',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: const [
                NotificationItem(
                  title: '二维码修复完成',
                  message: '站点S-08的二维码污损已修复',
                  time: '刚刚',
                  isRead: false,
                ),
                NotificationItem(
                  title: '地面维修计划',
                  message: '路径P-12的地面不平维修工单已创建',
                  time: '1小时前',
                  isRead: true,
                ),
                NotificationItem(
                  title: '车辆异常',
                  message: 'AGV-03报告定位异常',
                  time: '2小时前',
                  isRead: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('关闭'),
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final bool isRead;

  const NotificationItem({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isRead ? Colors.grey.shade100 : Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Icon(
            Icons.notifications,
            color: isRead ? Colors.grey : Colors.blue,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isRead ? Colors.grey : Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(message),
              ],
            ),
          ),
          Text(
            time,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// ===================== 概览页面 =====================
class OverviewPage extends StatefulWidget {
  final SiteHealthGrpcService grpcService;
  
  const OverviewPage({super.key, required this.grpcService});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // gRPC 连接状态指示器
          _buildConnectionStatus(),
          const SizedBox(height: 16),
          
          // 关键指标卡片 (使用实时数据)
          _buildKeyMetrics(),
          const SizedBox(height: 24),
          
          // 异常分布
          _buildExceptionDistribution(),
          const SizedBox(height: 24),
          
          // 实时异常列表 (使用 gRPC 数据流)
          _buildRecentAlerts(),
        ],
      ),
    );
  }

  Widget _buildConnectionStatus() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: widget.grpcService.isConnected ? Colors.green.shade50 : Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: widget.grpcService.isConnected ? Colors.green : Colors.orange,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            widget.grpcService.isConnected ? Icons.check_circle : Icons.warning,
            color: widget.grpcService.isConnected ? Colors.green : Colors.orange,
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            widget.grpcService.isConnected ? 'gRPC 已连接' : 'gRPC 未连接 (使用模拟数据)',
            style: TextStyle(
              color: widget.grpcService.isConnected ? Colors.green.shade800 : Colors.orange.shade800,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKeyMetrics() {
    return StreamBuilder<Map<String, int>>(
      stream: widget.grpcService.getRealtimeMetrics(),
      builder: (context, snapshot) {
        final metrics = snapshot.data ?? {
          'normalVehicles': 12,
          'abnormalVehicles': 3,
          'qrCodeAnomalies': 8,
          'groundAnomalies': 3,
        };
        
        return GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.5,
          children: [
            _MetricCard(
              title: '正常车辆',
              value: '${metrics['normalVehicles']}',
              icon: Icons.check_circle,
              color: Colors.green,
              subtitle: '运行中',
            ),
            _MetricCard(
              title: '异常车辆',
              value: '${metrics['abnormalVehicles']}',
              icon: Icons.warning,
              color: Colors.orange,
              subtitle: '需关注',
            ),
            _MetricCard(
              title: '二维码异常点',
              value: '${metrics['qrCodeAnomalies']}',
              icon: Icons.qr_code_2,
              color: Colors.blue,
              subtitle: '实时更新',
            ),
            _MetricCard(
              title: '地面异常路段',
              value: '${metrics['groundAnomalies']}',
              icon: Icons.terrain,
              color: Colors.red,
              subtitle: '待维修',
            ),
          ],
        );
      },
    );
  }

  Widget _buildExceptionDistribution() {
    final data = [
      {'type': '间距不准', 'count': 12, 'color': Colors.blue},
      {'type': '二维码贴歪', 'count': 8, 'color': Colors.orange},
      {'type': '污损脏污', 'count': 15, 'color': Colors.red},
      {'type': '地面不平', 'count': 7, 'color': Colors.green},
      {'type': '贴反/贴错', 'count': 3, 'color': Colors.purple},
    ];

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '异常类型分布',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...data.map((item) => _buildDistributionItem(item)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildDistributionItem(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: item['color'] as Color,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(item['type'] as String),
                ],
              ),
              Text('${item['count']}次'),
            ],
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: (item['count'] as int) / 20,
            backgroundColor: Colors.grey.shade300,
            valueColor: AlwaysStoppedAnimation<Color>(item['color'] as Color),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentAlerts() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      '实时异常警报',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.fiber_manual_record, color: Colors.red, size: 12),
                    SizedBox(width: 4),
                    Text('LIVE', style: TextStyle(color: Colors.red, fontSize: 10)),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('查看全部'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            StreamBuilder<Map<String, dynamic>>(
              stream: widget.grpcService.getRealtimeAlerts(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                
                return _AlertItem(alert: snapshot.data!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;
  final String subtitle;

  const _MetricCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(icon, color: color, size: 32),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        value,
                        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AlertItem extends StatelessWidget {
  final Map<String, dynamic> alert;

  const _AlertItem({required this.alert});

  @override
  Widget build(BuildContext context) {
    Color levelColor;
    IconData levelIcon;
    switch (alert['level']) {
      case 'high':
        levelColor = Colors.red;
        levelIcon = Icons.error;
        break;
      case 'medium':
        levelColor = Colors.orange;
        levelIcon = Icons.warning;
        break;
      default:
        levelColor = Colors.blue;
        levelIcon = Icons.info;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(levelIcon, color: levelColor),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      alert['type'] as String,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      alert['time'] as String,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text('位置: ${alert['location']}'),
                const SizedBox(height: 4),
                Text(
                  '涉及车辆: ${alert['vehicles']}',
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );
  }
}

// ===================== 二维码异常分析页面 =====================
class QRCodeAnalysisPage extends StatefulWidget {
  const QRCodeAnalysisPage({super.key});

  @override
  State<QRCodeAnalysisPage> createState() => _QRCodeAnalysisPageState();
}

class _QRCodeAnalysisPageState extends State<QRCodeAnalysisPage> {
  String _selectedType = '全部';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Text('异常类型: ', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 12),
                ...['全部', '间距不准', '角度偏差', '污损脏污', '贴错位置', '未识别', '格式无效']
                    .map((type) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: Text(type),
                            selected: _selectedType == type,
                            onSelected: (selected) {
                              setState(() {
                                _selectedType = type;
                              });
                            },
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              QRCodeExceptionCard(),
              QRCodeExceptionCard(),
              QRCodeExceptionCard(),
              QRCodeExceptionCard(),
            ],
          ),
        ),
      ],
    );
  }
}

class QRCodeExceptionCard extends StatelessWidget {
  const QRCodeExceptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('站点: S-08', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('二维码ID: MRK_2024_08_001', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text('污损脏污', style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('异常详情:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildInfoTable(),
            const SizedBox(height: 16),
            const Text('多车验证数据:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildVehicleChip('AGV-01', '15次'),
                _buildVehicleChip('AGV-03', '8次'),
                _buildVehicleChip('AGV-05', '12次'),
                _buildVehicleChip('AGV-07', '9次'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.construction),
                  label: const Text('维修工单'),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    _showDataCorrectionDialog(context);
                  },
                  icon: const Icon(Icons.auto_fix_high),
                  label: const Text('数据修正'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTable() {
    return Column(
      children: [
        _buildTableRow('异常类型', 'kFalseResultMightBeDamagedOrDirty'),
        _buildTableRow('首次报告时间', '2024-01-15 10:30:45'),
        _buildTableRow('最近报告时间', '2024-01-15 14:22:18'),
        _buildTableRow('报告次数', '24次'),
        _buildTableRow('涉及车辆', 'AGV-01, AGV-03, AGV-05, AGV-07'),
        _buildTableRow('平均角度差', '2.3° (阈值: 1.5°~6°)'),
        _buildTableRow('平均距离差', '8mm (阈值: 5mm)'),
      ],
    );
  }

  Widget _buildTableRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(label, style: TextStyle(color: Colors.grey.shade700)),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildVehicleChip(String vehicle, String count) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: const Icon(Icons.directions_car, size: 16),
      ),
      label: Text('$vehicle ($count)'),
    );
  }

  void _showDataCorrectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('数据修正'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('您确定要对此异常进行数据修正吗？'),
            SizedBox(height: 8),
            Text('修正后，小车将能够持续稳定运行，不需运维介入。'),
            SizedBox(height: 12),
            Text('修正操作：'),
            Text('• 调整二维码识别阈值'),
            Text('• 更新定位补偿参数'),
            Text('• 优化路径规划'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('数据修正已提交，将在下次通过时生效'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Text('确认修正'),
          ),
        ],
      ),
    );
  }
}

// ===================== 地面异常分析页面 =====================
class GroundAnalysisPage extends StatefulWidget {
  const GroundAnalysisPage({super.key});

  @override
  State<GroundAnalysisPage> createState() => _GroundAnalysisPageState();
}

class _GroundAnalysisPageState extends State<GroundAnalysisPage> {
  bool _showParams = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '地面检测参数配置',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _showParams = !_showParams;
                        });
                      },
                      icon: Icon(_showParams ? Icons.expand_less : Icons.expand_more),
                    ),
                  ],
                ),
                if (_showParams) ...[
                  const SizedBox(height: 16),
                  _buildParameterCard(),
                ],
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              GroundExceptionCard(),
              GroundExceptionCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildParameterCard() {
    return Card(
      color: Colors.grey.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildParameterRow('振动幅度阈值', '4°', '角速度变化超过此值认为发生振动'),
            _buildParameterRow('非振动幅度阈值', '2°', '角速度变化低于此值认为振动停止'),
            _buildParameterRow('振动确认周期数', '2', '连续达到阈值周期数后才确认振动开始'),
            _buildParameterRow('振动结束确认周期数', '3', '连续低于阈值周期数后确认振动结束'),
            _buildParameterRow('空载检测', '启用', '是否在空载时也检测振动'),
            _buildParameterRow('缓解行动', '禁用', '是否采取行动（如降速）来缓解振动'),
          ],
        ),
      ),
    );
  }

  Widget _buildParameterRow(String name, String value, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(description, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue.shade100),
            ),
            child: Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
    ));
  }
}

class GroundExceptionCard extends StatelessWidget {
  const GroundExceptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('路径: P-12', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Chip(
                  label: Text('地面不平', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text('位置描述: 从站点S-08到S-09的转弯处 (kUnderpanExceptionalVibration)'),
            const SizedBox(height: 12),
            const Text('多车验证数据:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildVehicleDataTable(),
            const SizedBox(height: 16),
            const Text('云端判断逻辑:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: const Text(
                '同一路径上，多车上报 kUnderpanExceptionalVibration 异常。'
                '排除车辆个体故障后，判断该路段地面存在坑洼、接缝不平或异常凸起。',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _showMaintenanceDialog(context);
                    },
                    icon: const Icon(Icons.construction),
                    label: const Text('创建维修工单'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      _showVibrationDetails(context);
                    },
                    icon: const Icon(Icons.analytics),
                    label: const Text('振动分析'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVehicleDataTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey.shade300),
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.grey.shade100),
          children: const [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('车辆编号', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('振动等级', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('报告次数', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('最后报告', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        _buildTableRow('AGV-03', '高', '15次', '14:32', Colors.red),
        _buildTableRow('AGV-07', '中', '8次', '13:45', Colors.orange),
        _buildTableRow('AGV-11', '高', '12次', '14:15', Colors.red),
        _buildTableRow('AGV-02', '低', '3次', '11:20', Colors.blue),
      ],
    );
  }

  TableRow _buildTableRow(String vehicle, String level, String count, String time, Color color) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Icon(Icons.directions_car, size: 16),
              const SizedBox(width: 8),
              Text(vehicle),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color),
            ),
            child: Text(level, style: TextStyle(color: color)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(count),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(time),
        ),
      ],
    );
  }

  void _showMaintenanceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('创建维修工单'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('您确定要为路径P-12创建地面维修工单吗？'),
            SizedBox(height: 12),
            Text('维修类型: 地面平整'),
            Text('优先级: 高'),
            Text('预计耗时: 4小时'),
            SizedBox(height: 8),
            Text('涉及区域将暂停使用。'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('维修工单已创建，编号: MTN-2024-012'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Text('确认创建'),
          ),
        ],
      ),
    );
  }

  void _showVibrationDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('振动数据分析', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '振动波形图\n(角速度变化曲线)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildVibrationDataTable(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('关闭'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVibrationDataTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey.shade300),
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.grey.shade100),
          children: const [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('时间', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('振幅', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('持续时间', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        _buildVibrationRow('14:30:00', '5.2°', '2.3s'),
        _buildVibrationRow('14:30:15', '4.8°', '1.8s'),
        _buildVibrationRow('14:30:30', '5.5°', '2.5s'),
      ],
    );
  }

  TableRow _buildVibrationRow(String time, String amplitude, String duration) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(time),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(amplitude),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(duration),
        ),
      ],
    );
  }
}

// ===================== 车辆状态页面 =====================
class VehicleStatusPage extends StatefulWidget {
  final SiteHealthGrpcService grpcService;
  
  const VehicleStatusPage({super.key, required this.grpcService});

  @override
  State<VehicleStatusPage> createState() => _VehicleStatusPageState();
}

class _VehicleStatusPageState extends State<VehicleStatusPage> {
  String _filter = '全部';

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '搜索车辆编号...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              PopupMenuButton<String>(
                icon: const Icon(Icons.filter_list),
                onSelected: (value) {
                  setState(() {
                    _filter = value;
                  });
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(value: '全部', child: Text('全部车辆')),
                  const PopupMenuItem(value: '正常', child: Text('正常车辆')),
                  const PopupMenuItem(value: '异常', child: Text('异常车辆')),
                  const PopupMenuItem(value: '警告', child: Text('警告车辆')),
                ],
              ),
            ],
          ),
        ),
        if (_filter != '全部')
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Chip(
              label: Text('筛选: $_filter'),
              onDeleted: () {
                setState(() {
                  _filter = '全部';
                });
              },
            ),
          ),
        Expanded(
          child: StreamBuilder<List<VehicleStatusData>>(
            stream: widget.grpcService.getRealtimeVehicleStatus(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              
              final vehicles = snapshot.data!;
              final filteredVehicles = vehicles.where((vehicle) {
                if (_filter == '全部') return true;
                if (_filter == '正常') return vehicle.status == '运行中';
                if (_filter == '异常') return vehicle.status == '异常';
                return vehicle.status == '警告';
              }).toList();
              
              return ListView.builder(
                itemCount: filteredVehicles.length,
                itemBuilder: (context, index) => _buildVehicleCard(filteredVehicles[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildVehicleCard(VehicleStatusData vehicle) {
    Color statusColor;
    switch (vehicle.status) {
      case '运行中':
        statusColor = Colors.green;
        break;
      case '异常':
        statusColor = Colors.red;
        break;
      default:
        statusColor = Colors.orange;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: statusColor.withOpacity(0.2),
          child: Icon(
            _getStatusIcon(vehicle.status),
            color: statusColor,
          ),
        ),
        title: Text(
          vehicle.id,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text('状态: ${vehicle.status} - ${vehicle.condition}'),
            const SizedBox(height: 4),
            LinearProgressIndicator(
              value: vehicle.healthScore / 100,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(
                vehicle.healthScore > 80
                    ? Colors.green
                    : vehicle.healthScore > 60
                        ? Colors.orange
                        : Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('健康度: ${vehicle.healthScore}%'),
                Text('位置: ${vehicle.location}'),
              ],
            ),
            if (vehicle.exception.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                '异常: ${vehicle.exception}',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ],
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          _showVehicleDetail(vehicle);
        },
      ),
    );
  }

  IconData _getStatusIcon(String status) {
    switch (status) {
      case '运行中':
        return Icons.play_arrow;
      case '异常':
        return Icons.error;
      default:
        return Icons.warning;
    }
  }

  void _showVehicleDetail(VehicleStatusData vehicle) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => VehicleDetailSheet(vehicle: vehicle),
    );
  }
}

class VehicleDetailSheet extends StatelessWidget {
  final VehicleStatusData vehicle;

  const VehicleDetailSheet({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                vehicle.id,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildDetailRow('当前状态', vehicle.status),
                  _buildDetailRow('健康状况', vehicle.condition),
                  _buildDetailRow('健康度', '${vehicle.healthScore}%'),
                  _buildDetailRow('当前位置', vehicle.location),
                  if (vehicle.exception.isNotEmpty)
                    _buildDetailRow('当前异常', vehicle.exception),
                  _buildDetailRow('最后上报', '2024-01-15 14:32:18'),
                  _buildDetailRow('累计运行', '356小时'),
                  _buildDetailRow('今日里程', '23.5km'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text('近期异常记录:', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                _buildExceptionItem('kUnderpanExceptionalVibration', '地面不平', '路径P-12', '14:32'),
                _buildExceptionItem('kFalseResultMightBeDamagedOrDirty', '二维码污损', '站点S-08', '13:45'),
                _buildExceptionItem('kWrongLocation', '间距不准', '走廊C区', '11:20'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.history),
                  label: const Text('完整日志'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.build),
                  label: const Text('远程诊断'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey.shade700)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildExceptionItem(String code, String type, String location, String time) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning, color: Colors.orange, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(code, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                Text(type, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('位置: $location'),
              ],
            ),
          ),
          Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}

// ===================== 报告页面 =====================
class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  String _reportType = '日报';
  String _timeRange = '今日';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('生成报告', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                _buildDropdown('报告类型', _reportType, ['日报', '周报', '月报', '专项报告'], (value) {
                  setState(() {
                    _reportType = value!;
                  });
                }),
                const SizedBox(height: 16),
                _buildDropdown('时间范围', _timeRange, ['今日', '最近7天', '本月', '自定义'], (value) {
                  setState(() {
                    _timeRange = value!;
                  });
                }),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: _generateReport,
                  icon: const Icon(Icons.file_download),
                  label: const Text('生成并下载报告'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ReportCard(),
                ReportCard(),
                ReportCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown(String label, String value, List<String> items, ValueChanged<String?> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        DropdownButtonFormField<String>(
          value: value,
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }

  void _generateReport() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('生成报告中'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('正在生成报告，请稍候...'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
        ],
      ),
    );

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('《$_reportType - $_timeRange》报告生成完成'),
          duration: const Duration(seconds: 2),
          action: SnackBarAction(
            label: '查看',
            onPressed: () {},
          ),
        ),
      );
    });
  }
}

class ReportCard extends StatelessWidget {
  const ReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('场地健康周报', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('2024-01-08 ~ 2024-01-14'),
                  ],
                ),
                Chip(
                  label: const Text('已完成', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text('核心指标:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 16,
              runSpacing: 8,
              children: [
                _buildStatChip('异常总数', '42'),
                _buildStatChip('已修复', '28'),
                _buildStatChip('待处理', '14'),
                _buildStatChip('维修成功率', '94%'),
                _buildStatChip('平均修复时间', '3.2h'),
                _buildStatChip('车辆可用率', '98.5%'),
              ],
            ),
            const SizedBox(height: 12),
            const Text('核心价值:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: const Text(
                '通过"单点检测，多点聚合"模式，有效区分机器人故障与场地缺陷，'
                '将运维从被动的"救火"转变为主动的"预警和精准维修"，'
                '大幅提升场地运行稳定性和运维效率。',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility),
                  tooltip: '预览',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  tooltip: '下载',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  tooltip: '分享',
                ),
                const Spacer(),
                Text(
                  '生成时间: 2024-01-15 08:30',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatChip(String label, String value) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: Text(value[0], style: const TextStyle(fontSize: 12)),
      ),
      label: Text('$label: $value'),
    );
  }
}