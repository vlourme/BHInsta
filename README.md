# BHInstagram
An awesome tweak for Instagram!

# Features
- Hide Ads
- No suggested post
- Show Like count
- Confirm dialog for likes, follow and calls
- Copy description
- Download Videos
- Save profile image
- Keep deleted message
- Remove last seen
- Remove screenshot alert
- Unlimited replay of once story
- Disable Story Seen Receipt
- Focus mode (Inspired from stopped Threads for Instagram app)
    - Hide Reels tab
    - Hide every Explore posts
    - Hide every main feed posts
- Padlock

### Accessing the settings

Tweak settings are accessible by going on your profile and tapping the "three horizontal lines" button on the top right corner.

However, depending on your version, sometimes, a menu will not appear but directly "Settings and Activity".
In this case, go back and do a long press on the horizontal lines button to access the settings.

# Building
The following steps were tested on MacOS 14.2.1, Xcode 15.2, iOS 17.0.3 (non jailbroken) with Instagram 316.1.0.

## Requirements
- Having Xcode installed
- Having [Theos](https://theos.dev/docs/installation-macos) installed
- Having [Theos 14.5 SDK](https://github.com/theos/sdks) in your THEOS environment
- Having [Azule](https://github.com/Al4ise/Azule/wiki) in your PATH
- Having ldid installed (`brew install ldid`)
- Having an IPA of Instagram — You can use backup, [IPAArchive](https://ipaarchive.com/) or [iOSGods App Store](https://armconverter.com/decryptedappstore/us)
- Having [Sideloadly](https://sideloadly.io/) installed

## Steps
1. Clone the repository with `--recursive` flag to get the submodules.
2. Create a new folder called `packages` in the root of the project.
3. Copy the Instagram IPA to the `packages` folder, name it `com.burbn.instagram.ipa`.
4. Download the latest [Cephei SDK](https://github.com/hbang/libcephei/releases) and extract Cephei.framework, CepheiPrefs.framework and CepheiPrefs.bundle to the `packages` folder.
5. Run `build.sh`. The output IPA should be in the `packages` folder.
6. Install it using Sideloadly.