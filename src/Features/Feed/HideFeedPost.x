#import "../../InstagramHeaders.h"
#import "../../Manager.h"

// Hide feed post (keep the first elements: stories bar)
%hook IGMainFeedListAdapterDataSource
- (NSArray *)objectsForListAdapter:(id)arg1 {
    if ([SCIManager removeFeedPost]) {
        NSMutableArray *objects = [%orig mutableCopy];

        if (objects.count > 1) {
            [objects removeObjectsInRange:NSMakeRange(1, objects.count - 1)];
        }

        return objects;
    }

    return %orig;
}
%end