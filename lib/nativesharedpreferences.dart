import 'dart:async';

import 'package:flutter/services.dart';

class Nativesharedpreferences {
  static const MethodChannel _channel =
      const MethodChannel('nativesharedpreferences');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get token async {
    final String token = await _channel.invokeMethod('getToken');
    return token;
  }
}
