#import "../../InstagramHeaders.h"
#import "../../Manager.h"

%hook IGExploreGridViewController
- (id)view {
    if ([BHIManager removeExplorePost]) {
        NSLog(@"[BHI] IGExploreGridViewController - removeExplorePost");
        return nil;
    }
    
    return %orig;
}
%end