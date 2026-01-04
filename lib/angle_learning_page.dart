import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'site_health_real_grpc_service.dart';
import 'generated/site_health.pb.dart' as pb;
import 'generated/types.pb.dart' as types;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart';
import 'package:fixnum/fixnum.dart';

/// 角度学习管理页面
class AngleLearningPage extends StatefulWidget {
  final SiteHealthRealGrpcService grpcService;

  const AngleLearningPage({super.key, required this.grpcService});

  @override
  State<AngleLearningPage> createState() => _AngleLearningPageState();
}

class _AngleLearningPageState extends State<AngleLearningPage> {
  List<pb.GlobalAngleLearningResult> _learningResults = [];
  pb.AngleLearningStatistics? _statistics;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // 获取统计信息
      final stats = await widget.grpcService.getAngleLearningStatistics();
      print(
        '📊 统计信息: 总位置=${stats.totalLocations}, 完成=${stats.completedLocations}, 收集中=${stats.collectingLocations}',
      );

      // 获取所有角度学习位置
      final locationsResponse = await widget.grpcService
          .getAllAngleLearningLocations();

      print('📦 获取到 ${locationsResponse.totalCount} 个角度学习位置');

      final results = <pb.GlobalAngleLearningResult>[];
      for (var location in locationsResponse.locations) {
        print(
          '  - 位置(${location.logicLocation.localX},${location.logicLocation.localY}): 角度=${location.learnedAngle.toStringAsFixed(2)}°, 样本=${location.sampleCount}',
        );
        results.add(location);
      }

      print('✅ 最终加载了 ${results.length} 个角度学习结果');

      setState(() {
        _statistics = stats;
        _learningResults = results;
        _isLoading = false;
      });
    } catch (e) {
      print('❌ 加载失败: $e');
      setState(() {
        _errorMessage = '加载失败: $e';
        _isLoading = false;
      });
    }
  }

  Future<void> _showAddAngleDialog() async {
    final formKey = GlobalKey<FormState>();
    int x = 0;
    int y = 0;
    double angle = 0.0;
    int carId = 1;
    double heading = 0.0;
    double speed = 1.0;

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('添加角度数据'),
        content: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: '逻辑坐标 X'),
                  keyboardType: TextInputType.number,
                  initialValue: '0',
                  validator: (value) {
                    if (value == null || value.isEmpty) return '请输入 X 坐标';
                    return null;
                  },
                  onSaved: (value) => x = int.tryParse(value!) ?? 0,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '逻辑坐标 Y'),
                  keyboardType: TextInputType.number,
                  initialValue: '0',
                  validator: (value) {
                    if (value == null || value.isEmpty) return '请输入 Y 坐标';
                    return null;
                  },
                  onSaved: (value) => y = int.tryParse(value!) ?? 0,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '学习角度（度）'),
                  keyboardType: TextInputType.number,
                  initialValue: '0.0',
                  validator: (value) {
                    if (value == null || value.isEmpty) return '请输入角度';
                    final val = double.tryParse(value);
                    if (val == null || val < 0 || val >= 360) {
                      return '角度范围: 0-360';
                    }
                    return null;
                  },
                  onSaved: (value) => angle = double.tryParse(value!) ?? 0.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '车辆 ID'),
                  keyboardType: TextInputType.number,
                  initialValue: '1',
                  onSaved: (value) => carId = int.tryParse(value!) ?? 1,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '车头朝向（度）'),
                  keyboardType: TextInputType.number,
                  initialValue: '0.0',
                  onSaved: (value) => heading = double.tryParse(value!) ?? 0.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '运动速度（m/s）'),
                  keyboardType: TextInputType.number,
                  initialValue: '1.0',
                  onSaved: (value) => speed = double.tryParse(value!) ?? 1.0,
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.of(context).pop();
                await _addAngleSample(x, y, angle, carId, heading, speed);
              }
            },
            child: const Text('添加'),
          ),
        ],
      ),
    );
  }

  Future<void> _addAngleSample(
    int x,
    int y,
    double angle,
    int carId,
    double heading,
    double speed,
  ) async {
    try {
      final sample = pb.AngleSample()
        ..carId = Int64(carId)
        ..carType = 'AGV'
        ..logicLocation = (types.PositionData_t()
          ..localX = Int64(x)
          ..localY = Int64(y))
        ..carHeading = heading
        ..movementDirection = angle
        ..movementSpeed = speed
        ..learnedAngle = angle
        ..qualityScore = 0.9
        ..timestamp = (Timestamp()
          ..seconds = Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000)
          ..nanos = (DateTime.now().millisecondsSinceEpoch % 1000) * 1000000);

      await widget.grpcService.addManualAngleSample(sample);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✓ 角度数据添加成功'),
            backgroundColor: Colors.green,
          ),
        );
        _loadData();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('添加失败: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  Future<void> _deleteAngle(pb.GlobalAngleLearningResult result) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('确认删除'),
        content: Text(
          '确定要删除位置 (${result.logicLocation.localX}, ${result.logicLocation.localY}) '
          '的角度学习数据吗？',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('删除'),
          ),
        ],
      ),
    );

    if (confirm == true) {
      try {
        final request = pb.ResetAngleLearningRequest()
          ..logicLocation = result.logicLocation
          ..resetAll = false;

        await widget.grpcService.resetAngleLearning(request);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('✓ 角度数据已删除'),
              backgroundColor: Colors.green,
            ),
          );
          _loadData();
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('删除失败: $e'), backgroundColor: Colors.red),
          );
        }
      }
    }
  }

  Future<void> _clearAllData() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('确认清空'),
        content: const Text('确定要清空所有角度学习数据吗？此操作不可恢复！'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('清空全部'),
          ),
        ],
      ),
    );

    if (confirm == true) {
      try {
        final request = pb.CleanupAngleLearningRequest()..cleanupAll = true;

        await widget.grpcService.cleanupAngleLearning(request);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('✓ 所有角度数据已清空'),
              backgroundColor: Colors.green,
            ),
          );
          _loadData();
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('清空失败: $e'), backgroundColor: Colors.red),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(onRefresh: _loadData, child: _buildBody()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'add',
            onPressed: _showAddAngleDialog,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'clear',
            onPressed: _clearAllData,
            backgroundColor: Colors.red,
            child: const Icon(Icons.delete_sweep),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
            const SizedBox(height: 16),
            Text(_errorMessage!, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _loadData,
              icon: const Icon(Icons.refresh),
              label: const Text('重试'),
            ),
          ],
        ),
      );
    }

    return CustomScrollView(
      slivers: [
        // 统计信息卡片
        if (_statistics != null)
          SliverToBoxAdapter(child: _buildStatisticsCard()),

        // 数据列表
        _learningResults.isEmpty
            ? SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.school_outlined,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '暂无角度学习数据',
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '点击右下角 + 按钮添加',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),
              )
            : SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final result = _learningResults[index];
                    return _buildAngleLearningCard(result);
                  }, childCount: _learningResults.length),
                ),
              ),
      ],
    );
  }

  Widget _buildStatisticsCard() {
    final stats = _statistics!;
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.analytics_outlined, color: Colors.blue[700]),
                const SizedBox(width: 8),
                const Text(
                  '角度学习统计',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(height: 24),
            Wrap(
              spacing: 24,
              runSpacing: 16,
              children: [
                _buildStatItem(
                  '总位置数',
                  stats.totalLocations.toString(),
                  Icons.location_on,
                ),
                _buildStatItem(
                  '已完成',
                  stats.completedLocations.toString(),
                  Icons.check_circle,
                  Colors.green,
                ),
                _buildStatItem(
                  '收集中',
                  stats.collectingLocations.toString(),
                  Icons.pending,
                  Colors.orange,
                ),
                _buildStatItem(
                  '需重学',
                  stats.needRelearnLocations.toString(),
                  Icons.refresh,
                  Colors.red,
                ),
                _buildStatItem(
                  '总样本数',
                  stats.totalSamples.toString(),
                  Icons.analytics,
                ),
                _buildStatItem(
                  '参与车辆',
                  stats.totalVehicles.toString(),
                  Icons.directions_car,
                ),
                _buildStatItem(
                  '平均置信度',
                  '${(stats.averageConfidence * 100).toStringAsFixed(1)}%',
                  Icons.stars,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(
    String label,
    String value,
    IconData icon, [
    Color? color,
  ]) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 20, color: color ?? Colors.blue[700]),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color ?? Colors.black87,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAngleLearningCard(pb.GlobalAngleLearningResult result) {
    final statusInfo = _getStatusInfo(result.status);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: statusInfo['color'],
          child: Icon(statusInfo['icon'], color: Colors.white),
        ),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Text(
                '节点 (${result.logicLocation.localX}, ${result.logicLocation.localY})',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade700,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '${result.learnedAngle.toStringAsFixed(2)}°',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.orange.shade700,
                ),
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '置信度: ${(result.confidence * 100).toStringAsFixed(1)}% | 样本数: ${result.sampleCount}',
              ),
              Text(
                '参与车辆: ${result.vehicleCount} | 标准差: ${result.stdDeviation.toStringAsFixed(2)}°',
              ),
              if (result.hasLastUpdated())
                Text(
                  '更新: ${DateTime.fromMillisecondsSinceEpoch(result.lastUpdated.seconds.toInt() * 1000).toString().substring(0, 19)}',
                  style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                ),
            ],
          ),
        ),
        children: [_buildAngleDetails(result)],
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'delete',
              child: Row(
                children: [
                  Icon(Icons.delete, color: Colors.red),
                  SizedBox(width: 8),
                  Text('删除'),
                ],
              ),
            ),
          ],
          onSelected: (value) {
            if (value == 'delete') {
              _deleteAngle(result);
            }
          },
        ),
      ),
    );
  }

  Map<String, dynamic> _getStatusInfo(pb.LearningStatus status) {
    switch (status) {
      case pb.LearningStatus.LEARNING_STATUS_COMPLETED:
        return {
          'color': Colors.green,
          'icon': Icons.check_circle,
          'text': '已完成',
        };
      case pb.LearningStatus.LEARNING_STATUS_COLLECTING:
        return {'color': Colors.orange, 'icon': Icons.pending, 'text': '收集中'};
      case pb.LearningStatus.LEARNING_STATUS_NEED_RELEARN:
        return {'color': Colors.red, 'icon': Icons.refresh, 'text': '需重学'};
      case pb.LearningStatus.LEARNING_STATUS_FAILED:
        return {'color': Colors.grey, 'icon': Icons.error, 'text': '失败'};
      default:
        return {'color': Colors.grey, 'icon': Icons.help, 'text': '未知'};
    }
  }

  Widget _buildAngleDetails(pb.GlobalAngleLearningResult result) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '📊 学习详情',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                icon: const Icon(Icons.refresh, size: 16),
                label: const Text('刷新样本'),
                onPressed: () => _loadSamplesForNode(result),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildDetailRow(
            '节点坐标',
            '(${result.logicLocation.localX}, ${result.logicLocation.localY})',
            Icons.location_on,
          ),
          _buildDetailRow(
            '学习角度',
            '${result.learnedAngle.toStringAsFixed(2)}°',
            Icons.rotate_right,
          ),
          _buildDetailRow(
            '置信度',
            '${(result.confidence * 100).toStringAsFixed(1)}%',
            Icons.verified,
          ),
          _buildDetailRow('样本数量', '${result.sampleCount} 个', Icons.dataset),
          _buildDetailRow(
            '参与车辆',
            '${result.vehicleCount} 辆',
            Icons.directions_car,
          ),
          _buildDetailRow(
            '标准差',
            '${result.stdDeviation.toStringAsFixed(2)}°',
            Icons.trending_flat,
          ),
          _buildDetailRow(
            '学习状态',
            _getStatusText(result.status),
            Icons.info_outline,
          ),
          if (result.samples.isNotEmpty) ...[
            const Divider(height: 24),
            Text(
              '📝 样本数据 (显示 ${result.samples.length} 个)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 8),
            ...result.samples
                .take(10)
                .map((sample) => _buildSampleCard(sample)),
            if (result.samples.length > 10)
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '还有 ${result.samples.length - 10} 个样本未显示',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  textAlign: TextAlign.center,
                ),
              ),
          ] else ...[
            const Divider(height: 24),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '暂无样本数据\n点击"刷新样本"按钮加载',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _loadSamplesForNode(pb.GlobalAngleLearningResult result) async {
    try {
      // 查询特定节点的详细信息（包含样本）
      final request = pb.QueryAngleLearningRequest()
        ..logicLocation = result.logicLocation
        ..includeSamples = true;

      final response = await widget.grpcService.queryAngleLearning(request);

      if (response.hasGlobalLearning()) {
        setState(() {
          // 更新结果列表中的对应项
          final index = _learningResults.indexWhere(
            (r) =>
                r.logicLocation.localX == result.logicLocation.localX &&
                r.logicLocation.localY == result.logicLocation.localY,
          );
          if (index != -1) {
            _learningResults[index] = response.globalLearning;
          }
        });

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '✓ 已加载 ${response.globalLearning.samples.length} 个样本',
              ),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('加载样本失败: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  Widget _buildDetailRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey.shade600),
          const SizedBox(width: 8),
          SizedBox(
            width: 80,
            child: Text(label, style: TextStyle(color: Colors.grey.shade700)),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSampleCard(pb.AngleSample sample) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.directions_car,
                  size: 14,
                  color: Colors.blue.shade700,
                ),
                const SizedBox(width: 4),
                Text(
                  '车辆 ${sample.carId} (${sample.carType})',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Text(
                  '${sample.learnedAngle.toStringAsFixed(2)}°',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade700,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              '车头: ${sample.carHeading.toStringAsFixed(1)}° | '
              '方向: ${sample.movementDirection.toStringAsFixed(1)}° | '
              '速度: ${sample.movementSpeed.toStringAsFixed(2)}m/s',
              style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
            ),
            if (sample.hasTimestamp())
              Text(
                '时间: ${DateTime.fromMillisecondsSinceEpoch(sample.timestamp.seconds.toInt() * 1000).toString().substring(0, 19)}',
                style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
              ),
          ],
        ),
      ),
    );
  }

  String _getStatusText(pb.LearningStatus status) {
    switch (status) {
      case pb.LearningStatus.LEARNING_STATUS_COLLECTING:
        return '收集中';
      case pb.LearningStatus.LEARNING_STATUS_COMPLETED:
        return '已完成';
      case pb.LearningStatus.LEARNING_STATUS_NEED_RELEARN:
        return '需重新学习';
      case pb.LearningStatus.LEARNING_STATUS_FAILED:
        return '失败';
      default:
        return '未知';
    }
  }
}
