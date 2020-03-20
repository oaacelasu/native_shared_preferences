#import "NativesharedpreferencesPlugin.h"
#if __has_include(<nativesharedpreferences/nativesharedpreferences-Swift.h>)
#import <nativesharedpreferences/nativesharedpreferences-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nativesharedpreferences-Swift.h"
#endif

@implementation NativesharedpreferencesPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativesharedpreferencesPlugin registerWithRegistrar:registrar];
}
@end
