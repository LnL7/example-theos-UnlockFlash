#import <Preferences/Preferences.h>

@interface SettingsListController: PSListController {
}
@end

@implementation SettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Settings" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
