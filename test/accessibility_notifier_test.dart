// import 'package:flutter_test/flutter_test.dart';
// import 'package:accessibility_notifier/accessibility_notifier.dart';
// import 'package:accessibility_notifier/accessibility_notifier_platform_interface.dart';
// import 'package:accessibility_notifier/accessibility_notifier_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockAccessibilityNotifierPlatform
//     with MockPlatformInterfaceMixin
//     implements AccessibilityNotifierPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final AccessibilityNotifierPlatform initialPlatform = AccessibilityNotifierPlatform.instance;
//
//   test('$MethodChannelAccessibilityNotifier is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelAccessibilityNotifier>());
//   });
//
//   test('getPlatformVersion', () async {
//     AccessibilityNotifier accessibilityNotifierPlugin = AccessibilityNotifier();
//     MockAccessibilityNotifierPlatform fakePlatform = MockAccessibilityNotifierPlatform();
//     AccessibilityNotifierPlatform.instance = fakePlatform;
//
//     expect(await accessibilityNotifierPlugin.getPlatformVersion(), '42');
//   });
// }
