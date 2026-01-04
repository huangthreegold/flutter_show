import 'dart:async';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:fixnum/fixnum.dart';
import 'generated/site_health.pbgrpc.dart' as pb;
import 'generated/types.pb.dart' as types;
import 'package:protobuf/protobuf.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart';
import 'site_health_grpc_service.dart' show VehicleStatusData;

/// 跨平台的 gRPC 客户端服务
/// 自动根据平台选择合适的连接方式：
/// - Web: 使用 gRPC-Web (需要 Envoy 代理)
/// - Native (Android/iOS/Desktop): 使用原生 gRPC
class SiteHealthGrpcClientPlatform {
  ClientChannel? _channel;
  pb.SiteHealthServiceClient? _stub;
  bool _isConnected = false;

  StreamSubscription? _healthStatusSubscription;
  Timer? _statsTimer;

  /// 连接到 gRPC 服务器
  ///
  /// [host] 服务器地址
  /// [port] 端口号
  /// [useSecure] 是否使用 TLS/SSL
  Future<void> connect(String host, int port, {bool useSecure = false}) async {
    try {
      if (kIsWeb) {
        // Web 平台：使用 gRPC-Web
        // 注意：需要配置 gRPC-Web 代理（如 Envoy）
        _channel = ClientChannel(
          host,
          port: port,
          options: ChannelOptions(
            credentials: useSecure
                ? const ChannelCredentials.secure()
                : const ChannelCredentials.insecure(),
            // Web 平台特定配置
            codecRegistry: CodecRegistry(codecs: const [GzipCodec()]),
          ),
        );

        print('🌐 Web 平台：连接到 gRPC-Web 代理 $host:$port');
      } else {
        // 原生平台：使用标准 gRPC
        _channel = ClientChannel(
          host,
          port: port,
          options: ChannelOptions(
            credentials: useSecure
                ? const ChannelCredentials.secure()
                : const ChannelCredentials.insecure(),
          ),
        );

        print('📱 原生平台：连接到 gRPC 服务器 $host:$port');
      }

      // 验证连接
      await _channel!.getConnection().timeout(
        const Duration(seconds: 5),
        onTimeout: () {
          throw TimeoutException('连接超时');
        },
      );

      // 创建 gRPC stub
      _stub = pb.SiteHealthServiceClient(_channel!);
      _isConnected = true;

      print('✓ gRPC 连接成功: $host:$port');
    } catch (e) {
      _isConnected = false;
      print('✗ gRPC 连接失败: $e');
      rethrow;
    }
  }

  /// 断开连接
  Future<void> disconnect() async {
    if (_isConnected) {
      await _healthStatusSubscription?.cancel();
      _statsTimer?.cancel();
      await _channel?.shutdown();
      _isConnected = false;
      _channel = null;
      _stub = null;
      print('gRPC 连接已关闭');
    }
  }

  bool get isConnected => _isConnected;

  // ==================== 核心数据获取接口 ====================

  /// 获取健康统计信息（用于概览页面）
  Future<pb.HealthStatistics> getHealthStatistics() async {
    if (!_isConnected || _stub == null) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub!.getHealthStatistics(Empty());
      print('✓ 获取健康统计成功: 总节点 ${response.totalNodes}');
      return response;
    } catch (e) {
      print('✗ 获取健康统计失败: $e');
      rethrow;
    }
  }

  /// 获取所有场地列表
  Future<List<pb.Site>> getAllSites() async {
    if (!_isConnected || _stub == null) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub!.getAllSites(Empty());
      print('✓ 获取场地列表成功: ${response.sites.length} 个场地');
      return response.sites;
    } catch (e) {
      print('✗ 获取场地列表失败: $e');
      rethrow;
    }
  }

  /// 获取指定场地的详细信息
  Future<pb.Site> getSiteById(String siteId) async {
    if (!_isConnected || _stub == null) {
      throw Exception('gRPC 未连接');
    }

    try {
      final request = pb.SiteRequest()..siteId = siteId;
      final response = await _stub!.getSite(request);
      print('✓ 获取场地详情成功: ${response.name}');
      return response;
    } catch (e) {
      print('✗ 获取场地详情失败: $e');
      rethrow;
    }
  }

  /// 获取指定场地的所有车辆
  Future<List<pb.Vehicle>> getSiteVehicles(String siteId) async {
    if (!_isConnected || _stub == null) {
      throw Exception('gRPC 未连接');
    }

    try {
      final request = pb.SiteRequest()..siteId = siteId;
      final response = await _stub!.getSiteVehicles(request);
      print('✓ 获取场地车辆成功: ${response.vehicles.length} 辆车');
      return response.vehicles;
    } catch (e) {
      print('✗ 获取场地车辆失败: $e');
      rethrow;
    }
  }

  /// 获取车辆详细信息
  Future<pb.Vehicle> getVehicleById(String vehicleId) async {
    if (!_isConnected || _stub == null) {
      throw Exception('gRPC 未连接');
    }

    try {
      final request = pb.VehicleRequest()..vehicleId = vehicleId;
      final response = await _stub!.getVehicle(request);
      print('✓ 获取车辆详情成功: ${response.name}');
      return response;
    } catch (e) {
      print('✗ 获取车辆详情失败: $e');
      rethrow;
    }
  }

  /// 订阅健康状态流（实时更新）
  Stream<pb.HealthStatusUpdate> subscribeHealthStatus() {
    if (!_isConnected || _stub == null) {
      throw Exception('gRPC 未连接');
    }

    try {
      print('📡 开始订阅健康状态流...');
      return _stub!.subscribeHealthStatus(Empty());
    } catch (e) {
      print('✗ 订阅健康状态流失败: $e');
      rethrow;
    }
  }

  /// 发送心跳（保持连接活跃）
  Future<pb.PingResponse> ping() async {
    if (!_isConnected || _stub == null) {
      throw Exception('gRPC 未连接');
    }

    try {
      final request = pb.PingRequest()..timestamp = _createTimestamp();
      final response = await _stub!.ping(request);
      return response;
    } catch (e) {
      print('✗ Ping 失败: $e');
      rethrow;
    }
  }

  // ==================== 辅助方法 ====================

  /// 创建 Protobuf Timestamp
  Timestamp _createTimestamp() {
    final now = DateTime.now();
    return Timestamp()
      ..seconds = Int64(now.millisecondsSinceEpoch ~/ 1000)
      ..nanos = (now.millisecondsSinceEpoch % 1000) * 1000000;
  }

  /// 转换车辆数据为 UI 模型
  VehicleStatusData convertToVehicleStatus(pb.Vehicle vehicle) {
    return VehicleStatusData(
      id: vehicle.id,
      name: vehicle.name,
      status: _convertHealthStatus(vehicle.healthStatus),
      battery: vehicle.batteryLevel.toDouble(),
      lastUpdate: DateTime.now(),
      location: vehicle.lastKnownLocation.isNotEmpty
          ? vehicle.lastKnownLocation
          : '未知位置',
    );
  }

  String _convertHealthStatus(types.HealthStatus status) {
    switch (status) {
      case types.HealthStatus.HEALTHY:
        return 'healthy';
      case types.HealthStatus.WARNING:
        return 'warning';
      case types.HealthStatus.ERROR:
        return 'error';
      case types.HealthStatus.OFFLINE:
        return 'offline';
      default:
        return 'unknown';
    }
  }
}
