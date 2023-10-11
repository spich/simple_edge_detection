import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'simple_edge_detection_method_channel.dart';

abstract class SimpleEdgeDetectionPlatform extends PlatformInterface {
  /// Constructs a SimpleEdgeDetectionPlatform.
  SimpleEdgeDetectionPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleEdgeDetectionPlatform _instance = MethodChannelSimpleEdgeDetection();

  /// The default instance of [SimpleEdgeDetectionPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimpleEdgeDetection].
  static SimpleEdgeDetectionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimpleEdgeDetectionPlatform] when
  /// they register themselves.
  static set instance(SimpleEdgeDetectionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
