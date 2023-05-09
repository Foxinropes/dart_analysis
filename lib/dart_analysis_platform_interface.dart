import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dart_analysis_method_channel.dart';

abstract class DartAnalysisPlatform extends PlatformInterface {
  /// Constructs a DartAnalysisPlatform.
  DartAnalysisPlatform() : super(token: _token);

  static final Object _token = Object();

  static DartAnalysisPlatform _instance = MethodChannelDartAnalysis();

  /// The default instance of [DartAnalysisPlatform] to use.
  ///
  /// Defaults to [MethodChannelDartAnalysis].
  static DartAnalysisPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DartAnalysisPlatform] when
  /// they register themselves.
  static set instance(DartAnalysisPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
