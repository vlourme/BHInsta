#import "../../InstagramHeaders.h"
#import "../../Manager.h"

// Hide Reels tab
%hook IGTabBar
- (void)didMoveToWindow {
    %orig;

    if ([BHIManager removeReelsTab]) {
        NSMutableArray *tabButtons = [self valueForKey:@"_tabButtons"];

        if ([tabButtons count] == 5) {
            [tabButtons removeObjectAtIndex:3];
        }

        [self.subviews[4] setHidden:YES];
    }
}
%end