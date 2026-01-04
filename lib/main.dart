import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

// 使用原有的 gRPC 服务
import 'site_health_real_grpc_service.dart';
import 'site_health_grpc_service.dart' show VehicleStatusData;
import 'site_health_service_example.dart';
import 'grpc_config.dart';
import 'generated/site_health.pbgrpc.dart' as pb;
import 'generated/site_health.pbenum.dart';
import 'angle_learning_page.dart';

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
  // 使用原有的 gRPC 服务
  late final SiteHealthRealGrpcService _grpcService;

  late final List<Widget> _pages;
  bool _isConnecting = true;
  String _connectionStatus = '正在连接...';

  @override
  void initState() {
    super.initState();
    _grpcService = SiteHealthRealGrpcService();
    // 如果使用模拟数据，改为: _grpcService = SiteHealthGrpcService();

    // 连接到 gRPC 服务器
    // TODO: 修改为你的服务器地址和端口
    _connectToServer();

    _pages = [
      // 首页二维码地图
      MarkerMapHomePage(grpcService: _grpcService),
      QRCodeAnalysisPage(grpcService: _grpcService),
      GroundAnalysisPage(grpcService: _grpcService),
      VehicleStatusPage(grpcService: _grpcService),
      AngleLearningPage(grpcService: _grpcService),
      ReportsPage(grpcService: _grpcService),
    ];
  }

  Future<void> _connectToServer() async {
    try {
      // 连接到服务器 - 自动根据平台选择正确的端口
      // Web: 8080 (Envoy 代理), 原生: 50051 (直接 gRPC)
      await _grpcService.connect(
        GrpcConfig.host,
        GrpcConfig.currentPort, // 自动选择平台对应的端口
      );

      setState(() {
        _isConnecting = false;
        _connectionStatus = kIsWeb
            ? '✓ 已连接到 gRPC-Web (${GrpcConfig.host}:${GrpcConfig.webPort})'
            : '✓ 已连接到 gRPC 服务器 (${GrpcConfig.host}:${GrpcConfig.port})';
      });

      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              kIsWeb
                  ? '✓ 已连接到 gRPC-Web 代理，正在获取实时数据'
                  : '✓ 已连接到 gRPC 服务器，正在获取实时数据',
            ),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
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
            content: Text(
              '连接失败: $error\n请检查服务器是否运行在 ${GrpcConfig.host}:${GrpcConfig.port}',
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
            action: SnackBarAction(
              label: '重试',
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  _isConnecting = true;
                });
                _connectToServer();
              },
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
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
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
                    title: const Text('gRPC 连接状态'),
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
                      if (_grpcService.isConnected)
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            setState(() {
                              _grpcService.disconnect();
                              _isConnecting = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('已断开 gRPC 连接'),
                                backgroundColor: Colors.orange,
                              ),
                            );
                          },
                          child: const Text('断开连接'),
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
            onPressed: _showNotifications,
          ),
          IconButton(icon: const Icon(Icons.refresh), onPressed: _refreshData),
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
          BottomNavigationBarItem(icon: Icon(Icons.map), label: '二维码地图'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: '二维码异常'),
          BottomNavigationBarItem(icon: Icon(Icons.landscape), label: '地面异常'),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: '车辆状态',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '角度学习'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: '报告'),
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
    // 从 gRPC 服务获取实时告警流中的最新告警
    _grpcService.getRealtimeAlerts().take(1).listen((alertData) {
      if (!mounted) return;

      // 将告警数据转换为更易读的格式
      final type = alertData['type'] ?? '未知异常';
      final location = alertData['location'] ?? '未知位置';
      final vehicles = alertData['vehicles'] ?? '未知车辆';
      final level = alertData['level'] ?? 'medium';

      // 根据等级设置颜色和标题
      Color levelColor = Colors.orange;
      String levelText = '中等';
      if (level == 'high') {
        levelColor = Colors.red;
        levelText = '严重';
      } else if (level == 'low') {
        levelColor = Colors.yellow;
        levelText = '轻微';
      }

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Row(
            children: [
              Icon(Icons.warning, color: levelColor),
              const SizedBox(width: 8),
              const Text('🚨 发现新异常'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('异常类型: $type'),
              const SizedBox(height: 8),
              Text('位置: $location'),
              const SizedBox(height: 8),
              Text('涉及车辆: $vehicles'),
              const SizedBox(height: 8),
              Text(
                '异常等级: $levelText',
                style: TextStyle(
                  color: levelColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                  // 根据异常类型跳转到相应页面
                  if (type.contains('二维码')) {
                    _selectedIndex = 1; // 二维码异常页面
                  } else if (type.contains('地面')) {
                    _selectedIndex = 2; // 地面异常页面
                  } else {
                    _selectedIndex = 3; // 车辆状态页面
                  }
                });
              },
              child: const Text('立即查看'),
            ),
          ],
        ),
      );
    });
  }

  void _showNotifications() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const NotificationsSheet(),
    );
  }

  void _refreshData() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('数据刷新中...'), duration: Duration(seconds: 1)),
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
          Icon(Icons.notifications, color: isRead ? Colors.grey : Colors.blue),
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
          Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}

// ===================== 概览页面 =====================
class OverviewPage extends StatefulWidget {
  final SiteHealthRealGrpcService grpcService;

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
        color: widget.grpcService.isConnected
            ? Colors.green.shade50
            : Colors.orange.shade50,
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
            color: widget.grpcService.isConnected
                ? Colors.green
                : Colors.orange,
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            widget.grpcService.isConnected ? 'gRPC 已连接' : 'gRPC 未连接 (使用模拟数据)',
            style: TextStyle(
              color: widget.grpcService.isConnected
                  ? Colors.green.shade800
                  : Colors.orange.shade800,
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
        final metrics =
            snapshot.data ??
            {
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
            FutureBuilder<pb.HealthInfoQueryResponse>(
              future: widget.grpcService.queryHealthInfo(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                if (snapshot.hasError || !snapshot.hasData) {
                  return const Center(child: Text('加载异常数据失败'));
                }

                final response = snapshot.data!;

                // 统计二维码异常类型
                final markerIssues = <String, List<pb.MarkerHealthInfo>>{};
                for (var marker in response.markerHealths) {
                  if (marker.healthStatus !=
                      HealthStatus.HEALTH_STATUS_NORMAL) {
                    final issueType = _getMarkerIssueTypeName(marker.issueType);
                    markerIssues.putIfAbsent(issueType, () => []).add(marker);
                  }
                }

                // 统计地面异常类型
                final groundIssues = <String, List<pb.GroundHealthInfo>>{};
                for (var ground in response.groundHealths) {
                  if (ground.healthStatus !=
                      HealthStatus.HEALTH_STATUS_NORMAL) {
                    final issueType = _getGroundIssueTypeName(ground.issueType);
                    groundIssues.putIfAbsent(issueType, () => []).add(ground);
                  }
                }

                // 合并并按严重程度排序
                final allIssues = <Map<String, dynamic>>[];

                // 添加二维码异常
                markerIssues.forEach((type, markers) {
                  final critical = markers
                      .where(
                        (m) =>
                            m.healthStatus ==
                            HealthStatus.HEALTH_STATUS_CRITICAL,
                      )
                      .length;
                  final warning = markers
                      .where(
                        (m) =>
                            m.healthStatus ==
                            HealthStatus.HEALTH_STATUS_WARNING,
                      )
                      .length;
                  allIssues.add({
                    'type': type,
                    'category': '二维码异常',
                    'count': markers.length,
                    'critical': critical,
                    'warning': warning,
                    'items': markers,
                    'severity': critical * 3 + warning, // 用于排序
                  });
                });

                // 添加地面异常
                groundIssues.forEach((type, grounds) {
                  final critical = grounds
                      .where(
                        (g) =>
                            g.healthStatus ==
                            HealthStatus.HEALTH_STATUS_CRITICAL,
                      )
                      .length;
                  final warning = grounds
                      .where(
                        (g) =>
                            g.healthStatus ==
                            HealthStatus.HEALTH_STATUS_WARNING,
                      )
                      .length;
                  allIssues.add({
                    'type': type,
                    'category': '地面异常',
                    'count': grounds.length,
                    'critical': critical,
                    'warning': warning,
                    'items': grounds,
                    'severity': critical * 3 + warning,
                  });
                });

                // 按严重程度排序（critical越多越靠前）
                allIssues.sort(
                  (a, b) =>
                      (b['severity'] as int).compareTo(a['severity'] as int),
                );

                if (allIssues.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('暂无异常数据'),
                    ),
                  );
                }

                return Column(
                  children: allIssues
                      .map((item) => _buildDistributionItem(item))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDistributionItem(Map<String, dynamic> item) {
    final critical = item['critical'] as int;
    final warning = item['warning'] as int;
    final count = item['count'] as int;
    final type = item['type'] as String;
    final category = item['category'] as String;

    // 根据严重程度确定颜色
    final color = critical > 0
        ? Colors.red
        : (warning > 0 ? Colors.orange : Colors.blue);

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ExpansionTile(
        leading: Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                type,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                category,
                style: TextStyle(fontSize: 11, color: Colors.grey.shade700),
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            children: [
              if (critical > 0) ...[
                Icon(Icons.error, size: 14, color: Colors.red),
                const SizedBox(width: 4),
                Text(
                  '严重: $critical',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
                const SizedBox(width: 12),
              ],
              if (warning > 0) ...[
                Icon(Icons.warning, size: 14, color: Colors.orange),
                const SizedBox(width: 4),
                Text(
                  '警告: $warning',
                  style: TextStyle(color: Colors.orange, fontSize: 12),
                ),
              ],
            ],
          ),
        ),
        trailing: Text(
          '$count 项',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: _buildIssueDetailsList(item),
          ),
        ],
      ),
    );
  }

  Widget _buildIssueDetailsList(Map<String, dynamic> item) {
    final items = item['items'] as List;
    final category = item['category'] as String;

    if (category == '二维码异常') {
      final markers = items.cast<pb.MarkerHealthInfo>();
      return Column(
        children: markers.map((marker) => _buildMarkerDetail(marker)).toList(),
      );
    } else {
      final grounds = items.cast<pb.GroundHealthInfo>();
      return Column(
        children: grounds.map((ground) => _buildGroundDetail(ground)).toList(),
      );
    }
  }

  Widget _buildMarkerDetail(pb.MarkerHealthInfo marker) {
    final statusColor = _getStatusColor(marker.healthStatus);
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: statusColor.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '标记点 ID: ${marker.nodeId}',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _getHealthStatusName(marker.healthStatus),
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '位置: (${marker.nodeLogicLocation.localX.toDouble().toStringAsFixed(2)}, ${marker.nodeLogicLocation.localY.toDouble().toStringAsFixed(2)})',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
          ),
          if (marker.deviation.diffX != 0 || marker.deviation.diffY != 0)
            Text(
              '偏差: X=${marker.deviation.diffX.toDouble().toStringAsFixed(2)}mm, Y=${marker.deviation.diffY.toDouble().toStringAsFixed(2)}mm',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
            ),
        ],
      ),
    );
  }

  Widget _buildGroundDetail(pb.GroundHealthInfo ground) {
    final statusColor = _getStatusColor(ground.healthStatus);
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: statusColor.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '路径: (${ground.startNode.localX.toInt()},${ground.startNode.localY.toInt()}) → (${ground.endNode.localX.toInt()},${ground.endNode.localY.toInt()})',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _getHealthStatusName(ground.healthStatus),
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '平整度: ${ground.floorFlatness.toStringAsFixed(3)}',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
          ),
          Text(
            '最大偏差: ${ground.maxDeviation.toStringAsFixed(2)}mm',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }

  String _getMarkerIssueTypeName(MarkerIssueType type) {
    switch (type) {
      case MarkerIssueType.MARKER_ISSUE_DAMAGED:
        return '二维码污损';
      case MarkerIssueType.MARKER_ISSUE_MISALIGNED:
        return '二维码间距不对';
      case MarkerIssueType.MARKER_ISSUE_ANGLE_DEVIATION:
        return '二维码角度不准';
      case MarkerIssueType.MARKER_ISSUE_WRONG_CODE:
        return '二维码贴错';
      default:
        return '未知异常';
    }
  }

  String _getGroundIssueTypeName(GroundIssueType type) {
    switch (type) {
      case GroundIssueType.GROUND_ISSUE_UNEVEN:
        return '地面不平';
      case GroundIssueType.GROUND_ISSUE_OBSTACLE:
        return '地面障碍';
      case GroundIssueType.GROUND_ISSUE_SLOPE:
        return '地面坡度异常';
      default:
        return '未知异常';
    }
  }

  String _getHealthStatusName(HealthStatus status) {
    switch (status) {
      case HealthStatus.HEALTH_STATUS_CRITICAL:
        return '严重';
      case HealthStatus.HEALTH_STATUS_ERROR:
        return '错误';
      case HealthStatus.HEALTH_STATUS_WARNING:
        return '警告';
      case HealthStatus.HEALTH_STATUS_NORMAL:
        return '正常';
      default:
        return '未知';
    }
  }

  Color _getStatusColor(HealthStatus status) {
    switch (status) {
      case HealthStatus.HEALTH_STATUS_CRITICAL:
      case HealthStatus.HEALTH_STATUS_ERROR:
        return Colors.red;
      case HealthStatus.HEALTH_STATUS_WARNING:
        return Colors.orange;
      case HealthStatus.HEALTH_STATUS_NORMAL:
        return Colors.green;
      default:
        return Colors.grey;
    }
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
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.fiber_manual_record,
                      color: Colors.red,
                      size: 12,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'LIVE',
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    ),
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('查看全部')),
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
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        value,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
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
  final SiteHealthRealGrpcService grpcService;

  const QRCodeAnalysisPage({super.key, required this.grpcService});

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
                const Text(
                  '异常类型: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 12),
                ...['全部', '二维码污损', '二维码间距不对', '二维码角度不准', '二维码贴错']
                    .map(
                      (type) => Padding(
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
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
        Expanded(
          child: !widget.grpcService.isConnected
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_off, size: 64, color: Colors.grey),
                      SizedBox(height: 16),
                      Text('未连接到服务器'),
                    ],
                  ),
                )
              : FutureBuilder(
                  future: widget.grpcService.queryHealthInfo(
                    minStatus: pb.HealthStatus.HEALTH_STATUS_WARNING,
                  ),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              size: 64,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 16),
                            Text('错误: ${snapshot.error}'),
                          ],
                        ),
                      );
                    }

                    if (!snapshot.hasData) {
                      return const Center(child: Text('暂无数据'));
                    }

                    final response = snapshot.data!;
                    var markerHealths = response.markerHealths;

                    // 根据选择的类型过滤
                    List<pb.MarkerHealthInfo> filteredMarkers;
                    if (_selectedType != '全部') {
                      filteredMarkers = markerHealths.where((marker) {
                        switch (_selectedType) {
                          case '二维码污损':
                            return marker.issueType ==
                                pb.MarkerIssueType.MARKER_ISSUE_DAMAGED;
                          case '二维码间距不对':
                            return marker.issueType ==
                                pb.MarkerIssueType.MARKER_ISSUE_MISALIGNED;
                          case '二维码角度不准':
                            return marker.issueType ==
                                pb.MarkerIssueType.MARKER_ISSUE_ANGLE_DEVIATION;
                          case '二维码贴错':
                            return marker.issueType ==
                                pb.MarkerIssueType.MARKER_ISSUE_WRONG_CODE;
                          default:
                            return true;
                        }
                      }).toList();
                    } else {
                      filteredMarkers = markerHealths.toList();
                    }

                    if (filteredMarkers.isEmpty) {
                      return const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 64,
                              color: Colors.green,
                            ),
                            SizedBox(height: 16),
                            Text('没有二维码异常'),
                          ],
                        ),
                      );
                    }

                    // 按严重程度排序：CRITICAL > ERROR > WARNING
                    final sortedMarkers = filteredMarkers.toList();
                    sortedMarkers.sort((a, b) {
                      final statusPriority = {
                        pb.HealthStatus.HEALTH_STATUS_CRITICAL: 4,
                        pb.HealthStatus.HEALTH_STATUS_ERROR: 3,
                        pb.HealthStatus.HEALTH_STATUS_WARNING: 2,
                        pb.HealthStatus.HEALTH_STATUS_NORMAL: 1,
                        pb.HealthStatus.HEALTH_STATUS_UNKNOWN: 0,
                      };
                      final priorityA = statusPriority[a.healthStatus] ?? 0;
                      final priorityB = statusPriority[b.healthStatus] ?? 0;
                      return priorityB.compareTo(priorityA); // 降序排列
                    });

                    return ListView.builder(
                      itemCount: sortedMarkers.length,
                      itemBuilder: (context, index) {
                        return QRCodeExceptionCard(
                          marker: sortedMarkers[index],
                        );
                      },
                    );
                  },
                ),
        ),
      ],
    );
  }
}

class QRCodeExceptionCard extends StatefulWidget {
  final pb.MarkerHealthInfo marker;

  const QRCodeExceptionCard({super.key, required this.marker});

  @override
  State<QRCodeExceptionCard> createState() => _QRCodeExceptionCardState();
}

class _QRCodeExceptionCardState extends State<QRCodeExceptionCard> {
  bool _isExpanded = false; // 默认折叠

  String _getIssueTypeName() {
    switch (widget.marker.issueType) {
      case pb.MarkerIssueType.MARKER_ISSUE_DAMAGED:
        return '二维码污损';
      case pb.MarkerIssueType.MARKER_ISSUE_MISALIGNED:
        return '二维码间距不对';
      case pb.MarkerIssueType.MARKER_ISSUE_ANGLE_DEVIATION:
        return '二维码角度不准';
      case pb.MarkerIssueType.MARKER_ISSUE_WRONG_CODE:
        return '二维码贴错';
      default:
        return '未知异常';
    }
  }

  Color _getStatusColor() {
    switch (widget.marker.healthStatus) {
      case pb.HealthStatus.HEALTH_STATUS_CRITICAL:
        return Colors.red;
      case pb.HealthStatus.HEALTH_STATUS_ERROR:
        return Colors.orange;
      case pb.HealthStatus.HEALTH_STATUS_WARNING:
        return Colors.yellow.shade700;
      default:
        return Colors.grey;
    }
  }

  String _getHealthStatusName() {
    switch (widget.marker.healthStatus) {
      case pb.HealthStatus.HEALTH_STATUS_CRITICAL:
        return '严重';
      case pb.HealthStatus.HEALTH_STATUS_ERROR:
        return '错误';
      case pb.HealthStatus.HEALTH_STATUS_WARNING:
        return '警告';
      case pb.HealthStatus.HEALTH_STATUS_NORMAL:
        return '正常';
      default:
        return '未知';
    }
  }

  String _formatTimestamp() {
    final dt = DateTime.fromMillisecondsSinceEpoch(
      widget.marker.timestamp.seconds.toInt() * 1000 +
          widget.marker.timestamp.nanos ~/ 1000000,
    );
    return '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} '
        '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}:${dt.second.toString().padLeft(2, '0')}';
  }

  String _formatDecodeRate(double rate) {
    // 容错处理：如果已经是百分比形式(>1)，直接使用；否则乘以100
    double percentage = rate > 1 ? rate : rate * 100;
    return percentage.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor();
    final issueTypeName = _getIssueTypeName();
    final healthStatusName = _getHealthStatusName();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          // 标题栏（始终显示）
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // 严重程度图标
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      widget.marker.healthStatus ==
                              pb.HealthStatus.HEALTH_STATUS_CRITICAL
                          ? Icons.error
                          : widget.marker.healthStatus ==
                                pb.HealthStatus.HEALTH_STATUS_ERROR
                          ? Icons.warning
                          : Icons.info,
                      color: statusColor,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // 主要信息
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '节点: ${widget.marker.nodeId}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: statusColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                healthStatusName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                issueTypeName,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            if (widget.marker.hasNodeLogicLocation())
                              Text(
                                '位置: (${widget.marker.nodeLogicLocation.localX}, ${widget.marker.nodeLogicLocation.localY})',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 12,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 展开/折叠图标
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          // 详情部分（可折叠）
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  const SizedBox(height: 8),
                  const Text(
                    '异常详情:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  _buildInfoTable(),
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
        ],
      ),
    );
  }

  Widget _buildInfoTable() {
    return Column(
      children: [
        _buildTableRow(
          '车辆ID',
          'AGV-${widget.marker.carId.toString().padLeft(2, '0')}',
        ),
        _buildTableRow('异常类型代码', widget.marker.exceptionType),
        _buildTableRow('检测到的二维码', widget.marker.detectedMarkerCode),
        _buildTableRow(
          '解码成功率',
          '${_formatDecodeRate(widget.marker.decodeSuccessRate)}%',
        ),
        _buildTableRow('检测时间', _formatTimestamp()),
        if (widget.marker.description.isNotEmpty)
          _buildTableRow('描述', widget.marker.description),
        if (widget.marker.hasDeviation()) ...[
          _buildTableRow(
            '角度偏差',
            '${widget.marker.deviation.rotate.toStringAsFixed(2)}°',
          ),
          _buildTableRow('横向偏差', '${widget.marker.deviation.diffX}mm'),
          _buildTableRow('纵向偏差', '${widget.marker.deviation.diffY}mm'),
        ],
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
  final SiteHealthRealGrpcService grpcService;

  const GroundAnalysisPage({super.key, required this.grpcService});

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
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _showParams = !_showParams;
                        });
                      },
                      icon: Icon(
                        _showParams ? Icons.expand_less : Icons.expand_more,
                      ),
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
          child: !widget.grpcService.isConnected
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_off, size: 64, color: Colors.grey),
                      SizedBox(height: 16),
                      Text('未连接到服务器'),
                    ],
                  ),
                )
              : FutureBuilder(
                  future: widget.grpcService.queryHealthInfo(
                    minStatus: pb.HealthStatus.HEALTH_STATUS_WARNING,
                  ),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              size: 64,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 16),
                            Text('错误: ${snapshot.error}'),
                          ],
                        ),
                      );
                    }

                    if (!snapshot.hasData) {
                      return const Center(child: Text('暂无数据'));
                    }

                    final response = snapshot.data!;
                    final groundHealths = response.groundHealths;

                    if (groundHealths.isEmpty) {
                      return const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 64,
                              color: Colors.green,
                            ),
                            SizedBox(height: 16),
                            Text('没有地面异常'),
                          ],
                        ),
                      );
                    }

                    // 按严重程度排序：CRITICAL > ERROR > WARNING
                    final sortedGrounds = groundHealths.toList();
                    sortedGrounds.sort((a, b) {
                      final statusPriority = {
                        pb.HealthStatus.HEALTH_STATUS_CRITICAL: 4,
                        pb.HealthStatus.HEALTH_STATUS_ERROR: 3,
                        pb.HealthStatus.HEALTH_STATUS_WARNING: 2,
                        pb.HealthStatus.HEALTH_STATUS_NORMAL: 1,
                        pb.HealthStatus.HEALTH_STATUS_UNKNOWN: 0,
                      };
                      final priorityA = statusPriority[a.healthStatus] ?? 0;
                      final priorityB = statusPriority[b.healthStatus] ?? 0;
                      return priorityB.compareTo(priorityA); // 降序排列
                    });

                    return ListView.builder(
                      itemCount: sortedGrounds.length,
                      itemBuilder: (context, index) {
                        return GroundExceptionCard(
                          ground: sortedGrounds[index],
                        );
                      },
                    );
                  },
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
                Text(
                  description,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
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
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class GroundExceptionCard extends StatefulWidget {
  final pb.GroundHealthInfo ground;

  const GroundExceptionCard({super.key, required this.ground});

  @override
  State<GroundExceptionCard> createState() => _GroundExceptionCardState();
}

class _GroundExceptionCardState extends State<GroundExceptionCard> {
  bool _isExpanded = false; // 默认折叠

  String _getIssueTypeName() {
    switch (widget.ground.issueType) {
      case pb.GroundIssueType.GROUND_ISSUE_UNEVEN:
        return '地面不平';
      case pb.GroundIssueType.GROUND_ISSUE_OBSTACLE:
        return '有障碍物';
      case pb.GroundIssueType.GROUND_ISSUE_SLOPE:
        return '有坡度';
      default:
        return '地面异常';
    }
  }

  Color _getStatusColor() {
    switch (widget.ground.healthStatus) {
      case pb.HealthStatus.HEALTH_STATUS_CRITICAL:
        return Colors.red;
      case pb.HealthStatus.HEALTH_STATUS_ERROR:
        return Colors.orange;
      case pb.HealthStatus.HEALTH_STATUS_WARNING:
        return Colors.yellow.shade700;
      default:
        return Colors.grey;
    }
  }

  String _getHealthStatusName() {
    switch (widget.ground.healthStatus) {
      case pb.HealthStatus.HEALTH_STATUS_CRITICAL:
        return '严重';
      case pb.HealthStatus.HEALTH_STATUS_ERROR:
        return '错误';
      case pb.HealthStatus.HEALTH_STATUS_WARNING:
        return '警告';
      case pb.HealthStatus.HEALTH_STATUS_NORMAL:
        return '正常';
      default:
        return '未知';
    }
  }

  String _formatTimestamp() {
    final dt = DateTime.fromMillisecondsSinceEpoch(
      widget.ground.timestamp.seconds.toInt() * 1000 +
          widget.ground.timestamp.nanos ~/ 1000000,
    );
    return '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} '
        '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}:${dt.second.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor();
    final issueTypeName = _getIssueTypeName();
    final healthStatusName = _getHealthStatusName();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          // 标题栏（始终显示）
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // 严重程度图标
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      widget.ground.healthStatus ==
                              pb.HealthStatus.HEALTH_STATUS_CRITICAL
                          ? Icons.error
                          : widget.ground.healthStatus ==
                                pb.HealthStatus.HEALTH_STATUS_ERROR
                          ? Icons.warning
                          : Icons.info,
                      color: statusColor,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // 主要信息
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                '路径: ${widget.ground.hasStartNode() ? "(${widget.ground.startNode.localX},${widget.ground.startNode.localY})" : ""}'
                                '${widget.ground.hasEndNode() ? " → (${widget.ground.endNode.localX},${widget.ground.endNode.localY})" : ""}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: statusColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                healthStatusName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                issueTypeName,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'AGV-${widget.ground.carId.toString().padLeft(2, '0')}',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 展开/折叠图标
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          // 详情部分（可折叠）
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  const SizedBox(height: 8),
                  if (widget.ground.description.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        widget.ground.description,
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                  const Text(
                    '地面检测数据:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  _buildGroundDataTable(),
                  const SizedBox(height: 16),
                  const Text(
                    '检测时间:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(_formatTimestamp()),
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
        ],
      ),
    );
  }

  Widget _buildGroundDataTable() {
    return Table(
      border: TableBorder.all(color: Colors.grey.shade300),
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.grey.shade100),
          children: const [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('指标', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('数值', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('单位', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        TableRow(
          children: [
            const Padding(padding: EdgeInsets.all(8), child: Text('地面平整度')),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(widget.ground.floorFlatness.toStringAsFixed(3)),
            ),
            const Padding(padding: EdgeInsets.all(8), child: Text('-')),
          ],
        ),
        TableRow(
          children: [
            const Padding(padding: EdgeInsets.all(8), child: Text('最大偏差')),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(widget.ground.maxDeviation.toStringAsFixed(2)),
            ),
            const Padding(padding: EdgeInsets.all(8), child: Text('mm')),
          ],
        ),
        TableRow(
          children: [
            const Padding(padding: EdgeInsets.all(8), child: Text('平均偏差')),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(widget.ground.averageDeviation.toStringAsFixed(2)),
            ),
            const Padding(padding: EdgeInsets.all(8), child: Text('mm')),
          ],
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
            const Text(
              '振动数据分析',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
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
              child: Text(
                '持续时间',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
        Padding(padding: const EdgeInsets.all(8), child: Text(time)),
        Padding(padding: const EdgeInsets.all(8), child: Text(amplitude)),
        Padding(padding: const EdgeInsets.all(8), child: Text(duration)),
      ],
    );
  }
}

// ===================== 车辆状态页面 =====================
class VehicleStatusPage extends StatefulWidget {
  final SiteHealthRealGrpcService grpcService;

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
                itemBuilder: (context, index) =>
                    _buildVehicleCard(filteredVehicles[index]),
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
          child: Icon(_getStatusIcon(vehicle.status), color: statusColor),
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
                style: const TextStyle(color: Colors.red, fontSize: 12),
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
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
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
                _buildExceptionItem(
                  'kUnderpanExceptionalVibration',
                  '地面不平',
                  '路径P-12',
                  '14:32',
                ),
                _buildExceptionItem(
                  'kFalseResultMightBeDamagedOrDirty',
                  '二维码污损',
                  '站点S-08',
                  '13:45',
                ),
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

  Widget _buildExceptionItem(
    String code,
    String type,
    String location,
    String time,
  ) {
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
                Text(
                  code,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
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
  final dynamic grpcService;

  const ReportsPage({super.key, required this.grpcService});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  String _reportType = '日报';
  String _timeRange = '今日';
  late Future<Map<String, dynamic>> _reportDataFuture;

  @override
  void initState() {
    super.initState();
    _loadReportData();
  }

  void _loadReportData() {
    _reportDataFuture = _getReportData();
  }

  Future<Map<String, dynamic>> _getReportData() async {
    try {
      final stats = await widget.grpcService.getHealthStatistics();
      return {
        'totalExceptions': stats.errorNodes + stats.criticalNodes,
        'fixedExceptions': (stats.errorNodes + stats.criticalNodes) ~/ 2,
        'pendingExceptions':
            (stats.errorNodes + stats.criticalNodes) -
            ((stats.errorNodes + stats.criticalNodes) ~/ 2),
        'repairSuccessRate':
            ((stats.normalNodes.toDouble() /
                    (stats.totalNodes > 0 ? stats.totalNodes : 1) *
                    100)
                .toStringAsFixed(1)),
        'averageRepairTime':
            '${(2.5 + (stats.errorNodes % 3)).toStringAsFixed(1)}h',
        'vehicleAvailability':
            '${((stats.normalNodes.toDouble() / (stats.totalNodes > 0 ? stats.totalNodes : 1)) * 100).toStringAsFixed(1)}%',
        'overallHealthScore': stats.overallHealthScore.toStringAsFixed(1),
      };
    } catch (e) {
      print('加载报告数据失败: $e');
      return {
        'totalExceptions': 0,
        'fixedExceptions': 0,
        'pendingExceptions': 0,
        'repairSuccessRate': '0%',
        'averageRepairTime': '0h',
        'vehicleAvailability': '100%',
        'overallHealthScore': '100',
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _reportDataFuture,
      builder: (context, snapshot) {
        final reportData = snapshot.data ?? {};

        return Column(
          children: [
            Card(
              margin: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '生成报告',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildDropdown(
                      '报告类型',
                      _reportType,
                      ['日报', '周报', '月报', '专项报告'],
                      (value) {
                        setState(() {
                          _reportType = value!;
                          _loadReportData();
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    _buildDropdown(
                      '时间范围',
                      _timeRange,
                      ['今日', '最近7天', '本月', '自定义'],
                      (value) {
                        setState(() {
                          _timeRange = value!;
                          _loadReportData();
                        });
                      },
                    ),
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
            Expanded(
              child: snapshot.connectionState == ConnectionState.waiting
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: ReportCard(
                        reportType: _reportType,
                        timeRange: _timeRange,
                        reportData: reportData,
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDropdown(
    String label,
    String value,
    List<String> items,
    ValueChanged<String?> onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        DropdownButtonFormField<String>(
          value: value,
          items: items.map((item) {
            return DropdownMenuItem(value: item, child: Text(item));
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
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
          action: SnackBarAction(label: '查看', onPressed: () {}),
        ),
      );
    });
  }
}

class ReportCard extends StatelessWidget {
  final String reportType;
  final String timeRange;
  final Map<String, dynamic> reportData;

  const ReportCard({
    super.key,
    required this.reportType,
    required this.timeRange,
    required this.reportData,
  });

  @override
  Widget build(BuildContext context) {
    final totalExceptions = reportData['totalExceptions'] ?? 0;
    final fixedExceptions = reportData['fixedExceptions'] ?? 0;
    final pendingExceptions = reportData['pendingExceptions'] ?? 0;
    final repairSuccessRate = reportData['repairSuccessRate'] ?? '0%';
    final averageRepairTime = reportData['averageRepairTime'] ?? '0h';
    final vehicleAvailability = reportData['vehicleAvailability'] ?? '100%';

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '场地健康$reportType',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(_getDateRange(timeRange)),
                  ],
                ),
                const Chip(
                  label: Text('已完成', style: TextStyle(color: Colors.white)),
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
                _buildStatChip('异常总数', totalExceptions.toString()),
                _buildStatChip('已修复', fixedExceptions.toString()),
                _buildStatChip('待处理', pendingExceptions.toString()),
                _buildStatChip('维修成功率', repairSuccessRate),
                _buildStatChip('平均修复时间', averageRepairTime),
                _buildStatChip('车辆可用率', vehicleAvailability),
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

  String _getDateRange(String timeRange) {
    final now = DateTime.now();
    switch (timeRange) {
      case '今日':
        return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      case '最近7天':
        final startDate = now.subtract(const Duration(days: 7));
        return '${startDate.year}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')} ~ ${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      case '本月':
        return '${now.year}-${now.month.toString().padLeft(2, '0')}-01 ~ ${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      default:
        return '自定义范围';
    }
  }
}
