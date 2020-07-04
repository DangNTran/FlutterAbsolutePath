import 'dart:async';
import 'dart:collection';

import 'package:flutter/services.dart';

class AbsolutePath {
  static const MethodChannel _channel =
      const MethodChannel('AbsolutePath');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> ofAsset(String assetName) async {
    Map<String, String> params = {'assetName': assetName};
    final String path = await _channel.invokeMethod('ofAsset', params);
    return path;
  }
}
