import 'dart:async';

import 'package:flutter/services.dart';

class Nativesharedpreferences {
  static const MethodChannel _channel =
      const MethodChannel('nativesharedpreferences');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
