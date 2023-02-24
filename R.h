#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface RStrings: NSObject
@end


@interface RImages: NSObject
- (UIImage*)qmuiIcloudDownloadFault;
- (UIImage*)qmuiEmotionDelete;
- (UIImage*)qmuiPreviewImageCheckboxChecked;
- (UIImage*)qmuiConsoleClear;
- (UIImage*)qmuiTipsError;
- (UIImage*)qmuiPreviewImageCheckbox;
- (UIImage*)qmuiConsoleLogo;
- (UIImage*)qmuiTipsDone;
- (UIImage*)qmuiPickerImageCheckbox;
- (UIImage*)qmuiPickerImageCheckboxChecked;
- (UIImage*)qmuiConsoleFilter;
- (UIImage*)qmuiTipsInfo;
- (UIImage*)qmuiPickerImageVideoMark;
- (UIImage*)qmuiConsoleFilterSelected;
- (UIImage*)qmuiPickerImageFavorite;
- (UIImage*)qmuiHiddenAlbum;
@end


@interface RLaunchScreen: NSObject
- (__kindof UIViewController*)instantiateInitialViewController;
@end


@interface RStoryboards: NSObject
- (RLaunchScreen*)launchScreen;
@end


@interface RSegue: NSObject
@property (nonatomic, strong) NSString* identifier;
- (void)performWithSource:(__kindof UIViewController*)sourceViewController sender:(id)sender;
@end


@interface RSegues: NSObject
@end


@interface R: NSObject
+ (RStrings*)string;
+ (RImages*)image;
+ (RStoryboards*)storyboard;
+ (RSegues*)segue;
@end


NS_ASSUME_NONNULL_END