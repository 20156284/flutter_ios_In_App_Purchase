import 'dart:async';

import 'package:flutter/services.dart';

class FlutterIosInAppPurchase {
  static const MethodChannel _channel =
      const MethodChannel('flutter_ios_in_app_purchase');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
