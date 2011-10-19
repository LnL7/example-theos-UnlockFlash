// FRAMWEORKS
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//=> SBScreenFlash
#import <SpringBoard/SpringBoard.h>

// Hook into SBAwayLockBar Class
%hook SBAwayLockBar

// Override -unlock Method
- (void)unlock
{
  // Call Original -unlock Method
  %orig;
	
  // Create Preference Dictionary from file
  NSDictionary *pref = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/me.lnl.jb-unlock.plist"];
	
	// Enabeled in Preferences?
	if( [[pref objectForKey:@"Flash"] boolValue] )
	{
		// Call flash on SBScreenFlash => will flash Screen
	  [[%c(SBScreenFlash) sharedInstance] flash];
	}
	
	// Release Preference Dictionary
	[pref release];
}

%end
