import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'simple_edge_detection_platform_interface.dart';

/// An implementation of [SimpleEdgeDetectionPlatform] that uses method channels.
class MethodChannelSimpleEdgeDetection extends SimpleEdgeDetectionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_edge_detection');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
