#import "R.h"


@implementation RStrings

@end


@interface RImages ()
@property (nonatomic, strong) UIImage* qmuiIcloudDownloadFault;
@property (nonatomic, strong) UIImage* qmuiEmotionDelete;
@property (nonatomic, strong) UIImage* qmuiPreviewImageCheckboxChecked;
@property (nonatomic, strong) UIImage* qmuiConsoleClear;
@property (nonatomic, strong) UIImage* qmuiTipsError;
@property (nonatomic, strong) UIImage* qmuiPreviewImageCheckbox;
@property (nonatomic, strong) UIImage* qmuiConsoleLogo;
@property (nonatomic, strong) UIImage* qmuiTipsDone;
@property (nonatomic, strong) UIImage* qmuiPickerImageCheckbox;
@property (nonatomic, strong) UIImage* qmuiPickerImageCheckboxChecked;
@property (nonatomic, strong) UIImage* qmuiConsoleFilter;
@property (nonatomic, strong) UIImage* qmuiTipsInfo;
@property (nonatomic, strong) UIImage* qmuiPickerImageVideoMark;
@property (nonatomic, strong) UIImage* qmuiConsoleFilterSelected;
@property (nonatomic, strong) UIImage* qmuiPickerImageFavorite;
@property (nonatomic, strong) UIImage* qmuiHiddenAlbum;
@end

@implementation RImages
- (UIImage*)qmuiIcloudDownloadFault { return [UIImage imageNamed:@"QMUI_icloud_download_fault" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiEmotionDelete { return [UIImage imageNamed:@"QMUI_emotion_delete" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiPreviewImageCheckboxChecked { return [UIImage imageNamed:@"QMUI_previewImage_checkbox_checked" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiConsoleClear { return [UIImage imageNamed:@"QMUI_console_clear" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiTipsError { return [UIImage imageNamed:@"QMUI_tips_error" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiPreviewImageCheckbox { return [UIImage imageNamed:@"QMUI_previewImage_checkbox" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiConsoleLogo { return [UIImage imageNamed:@"QMUI_console_logo" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiTipsDone { return [UIImage imageNamed:@"QMUI_tips_done" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiPickerImageCheckbox { return [UIImage imageNamed:@"QMUI_pickerImage_checkbox" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiPickerImageCheckboxChecked { return [UIImage imageNamed:@"QMUI_pickerImage_checkbox_checked" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiConsoleFilter { return [UIImage imageNamed:@"QMUI_console_filter" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiTipsInfo { return [UIImage imageNamed:@"QMUI_tips_info" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiPickerImageVideoMark { return [UIImage imageNamed:@"QMUI_pickerImage_video_mark" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiConsoleFilterSelected { return [UIImage imageNamed:@"QMUI_console_filter_selected" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiPickerImageFavorite { return [UIImage imageNamed:@"QMUI_pickerImage_favorite" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)qmuiHiddenAlbum { return [UIImage imageNamed:@"QMUI_hiddenAlbum" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
@end



@implementation RLaunchScreen
- (__kindof UIViewController*)instantiateInitialViewController { return [[UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil] instantiateInitialViewController]; }
@end


@interface RStoryboards ()
@property (nonatomic, strong) RLaunchScreen* launchScreen;
@end

@implementation RStoryboards

- (RLaunchScreen*)launchScreen
{
	if (!_launchScreen)
	{
		_launchScreen = [RLaunchScreen new];
	}
	return _launchScreen;
}

@end



@implementation RSegue
- (void)performWithSource:(__kindof UIViewController*)sourceViewController sender:(id)sender { [sourceViewController performSegueWithIdentifier:self.identifier sender:sender]; }
@end



@implementation RSegues

@end


@interface R ()
@property (nonatomic, strong) RStrings* string;
@property (nonatomic, strong) RImages* image;
@property (nonatomic, strong) RStoryboards* storyboard;
@property (nonatomic, strong) RSegues* segue;
@end

@implementation R

+ (instancetype)sharedInstance
{	 
	static dispatch_once_t pred;
 	static id sharedInstance_ = nil;
 
 	dispatch_once(&pred, ^{
 		sharedInstance_ = [[self alloc] init];
 	});
 
 	return sharedInstance_;

}

+ (RStrings*)string { return [[R sharedInstance] string]; }
+ (RImages*)image { return [[R sharedInstance] image]; }
+ (RStoryboards*)storyboard { return [[R sharedInstance] storyboard]; }
+ (RSegues*)segue { return [[R sharedInstance] segue]; }

- (RStrings*)string
{
	if (!_string)
	{
		_string = [RStrings new];
	}
	return _string;
}

- (RImages*)image
{
	if (!_image)
	{
		_image = [RImages new];
	}
	return _image;
}

- (RStoryboards*)storyboard
{
	if (!_storyboard)
	{
		_storyboard = [RStoryboards new];
	}
	return _storyboard;
}

- (RSegues*)segue
{
	if (!_segue)
	{
		_segue = [RSegues new];
	}
	return _segue;
}

@end


