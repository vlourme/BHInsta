#import "Manager.h"
#import "InstagramHeaders.h"

@implementation SCIManager
+ (BOOL)hideAds {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_ads"];
}
+ (BOOL)hideStoriesTray {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_stories_tray"];
}
+ (BOOL)downloadMedia {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"dw_videos"];
}
+ (BOOL)profileImageSave {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"save_profile"];
}
+ (BOOL)removeSuggestedPost {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"no_suggested_post"];
}
+ (BOOL)removeSuggestedAccounts {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"no_suggested_account"];
}
+ (BOOL)removeSuggestedReels {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"no_suggested_reels"];
}
+ (BOOL)removeSuggestedThreads {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"no_suggested_threads"];
}
+ (BOOL)removeFeedPost {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_feed_post"];
}
+ (BOOL)postLikeConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"like_confirm"];
}
+ (BOOL)reelsLikeConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"like_confirm_reels"];
}
+ (BOOL)followConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"follow_confirm"];
}
+ (BOOL)callConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"call_confirm"];
}
+ (BOOL)voiceMessageConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"voice_message_confirm"];
}
+ (BOOL)stickerInteractConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"sticker_interact_confirm"];
}
+ (BOOL)postCommentConfirmation {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"post_comment_confirm"];
}
+ (BOOL)copyDecription {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"copy_description"];
}
+ (BOOL)hideReelsTab {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_reels_tab"];
}
+ (BOOL)noRecentSearches {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"no_recent_searches"];
}
+ (BOOL)hideExploreGrid {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_explore_grid"];
}
+ (BOOL)hideTrendingSearches {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hide_trending_searches"];
}
+ (BOOL)noSuggestedChats {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"no_suggested_chats"];
}
+ (BOOL)Padlock {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"padlock"];
}
+ (BOOL)keepDeletedMessage {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"keep_deleted_message"];
}
+ (BOOL)hideLastSeen {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_lastseen"];
}
+ (BOOL)noScreenShotAlert {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"remove_screenshot_alert"];
}
+ (BOOL)unlimitedReplay {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"unlimited_replay"];
}
+ (BOOL)noSeenReceipt {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"no_seen_receipt"];
}
+ (BOOL)FLEX {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"flex_instagram"];
}


+ (void)cleanCache {
    // Temp folder
    BOOL tempFolderSuccess = [[NSFileManager defaultManager] removeItemAtURL:[NSURL fileURLWithPath:NSTemporaryDirectory()] error:nil];
    if (!tempFolderSuccess) NSLog(@"[SCInsta] Error deleting temp folder");

    // Cache folder
    BOOL cacheFolderSuccess = [[NSFileManager defaultManager] removeItemAtPath:[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0] error:nil];
    if (!cacheFolderSuccess) NSLog(@"[SCInsta] Error deleting cache folder");

}
+ (BOOL)isEmpty:(NSURL *)url {
    NSArray *folderFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:url includingPropertiesForKeys:@[] options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    if (folderFiles.count == 0) {
        return true;
    } else {
        return false;
    }
}
+ (void)showSaveVC:(id)item {
    UIActivityViewController *acVC = [[UIActivityViewController alloc] initWithActivityItems:@[item] applicationActivities:nil];
    if (is_iPad()) {
        acVC.popoverPresentationController.sourceView = topMostController().view;
        acVC.popoverPresentationController.sourceRect = CGRectMake(topMostController().view.bounds.size.width / 2.0, topMostController().view.bounds.size.height / 2.0, 1.0, 1.0);
    }
    [topMostController() presentViewController:acVC animated:true completion:nil];
}
+ (NSString *)getDownloadingPersent:(float)per {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterPercentStyle];
    NSNumber *number = [NSNumber numberWithFloat:per];
    return [numberFormatter stringFromNumber:number];
}
@end