// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:accessibility_notifier/accessibility_notifier_method_channel.dart';
//
// void main() {
//   MethodChannelAccessibilityNotifier platform = MethodChannelAccessibilityNotifier();
//   const MethodChannel channel = MethodChannel('accessibility_notifier');
//
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });
//
//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });
//
//   test('getPlatformVersion', () async {
//     expect(await platform.getPlatformVersion(), '42');
//   });
// }
