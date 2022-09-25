#import "AccessibilityNotifierPlugin.h"
#if __has_include(<accessibility_notifier/accessibility_notifier-Swift.h>)
#import <accessibility_notifier/accessibility_notifier-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "accessibility_notifier-Swift.h"
#endif

@implementation AccessibilityNotifierPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAccessibilityNotifierPlugin registerWithRegistrar:registrar];
}
@end
