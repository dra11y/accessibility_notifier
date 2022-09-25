import 'package:pigeon/pigeon.dart';

enum AccessibilityPostType {
  focus,
  screenChanged,
}

@HostApi()
abstract class AccessibilityNotifierApi {
  bool post(AccessibilityPostType type, String? id);
}
