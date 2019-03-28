import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ios_in_app_purchase/flutter_ios_in_app_purchase.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_ios_in_app_purchase');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterIosInAppPurchase.platformVersion, '42');
  });
}
