import Flutter
import UIKit

public class SwiftAccessibilityNotifierPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
      let api = AccessibilityNotifierApiImpl()
      AccessibilityNotifierApiSetup.setUp(binaryMessenger: registrar.messenger(), api: api)
  }
}
