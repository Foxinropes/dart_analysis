import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dart_analysis_platform_interface.dart';

/// An implementation of [DartAnalysisPlatform] that uses method channels.
class MethodChannelDartAnalysis extends DartAnalysisPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dart_analysis');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
