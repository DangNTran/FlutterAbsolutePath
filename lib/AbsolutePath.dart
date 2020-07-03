import 'dart:async';

import 'package:flutter/services.dart';

class AbsolutePath {
  static const MethodChannel _channel =
      const MethodChannel('AbsolutePath');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
