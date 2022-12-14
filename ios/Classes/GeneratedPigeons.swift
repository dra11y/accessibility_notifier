// Autogenerated from Pigeon (v4.2.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif


/// Generated class from Pigeon.

enum AccessibilityPostType: Int {
  case focus = 0
  case screenChanged = 1
}
private class AccessibilityNotifierApiCodecReader: FlutterStandardReader {
}
private class AccessibilityNotifierApiCodecWriter: FlutterStandardWriter {
}

private class AccessibilityNotifierApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return AccessibilityNotifierApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return AccessibilityNotifierApiCodecWriter(data: data)
  }
}

class AccessibilityNotifierApiCodec: FlutterStandardMessageCodec {
  static let shared = AccessibilityNotifierApiCodec(readerWriter: AccessibilityNotifierApiCodecReaderWriter())
}

///Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol AccessibilityNotifierApi {
  func post(type: AccessibilityPostType, id: String?) -> Bool
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class AccessibilityNotifierApiSetup {
  /// The codec used by AccessibilityNotifierApi.
  static var codec: FlutterStandardMessageCodec { AccessibilityNotifierApiCodec.shared }
  /// Sets up an instance of `AccessibilityNotifierApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: AccessibilityNotifierApi?) {
    let postChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.AccessibilityNotifierApi.post", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      postChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let typeArg = AccessibilityPostType(rawValue: args[0] as! Int)!
        let idArg = args[1] as? String
        let result = api.post(type: typeArg, id: idArg)
        reply(wrapResult(result))
      }
    } else {
      postChannel.setMessageHandler(nil)
    }
  }
}

private func wrapResult(_ result: Any?) -> [String: Any?] {
  return ["result": result]
}

private func wrapError(_ error: FlutterError) -> [String: Any?] {
  return [
    "error": [
      "code": error.code,
      "message": error.message,
      "details": error.details
    ]
  ]
}
