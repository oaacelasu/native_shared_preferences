import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nativesharedpreferences/nativesharedpreferences.dart';

void main() {
  const MethodChannel channel = MethodChannel('nativesharedpreferences');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Nativesharedpreferences.platformVersion, '42');
  });
}
