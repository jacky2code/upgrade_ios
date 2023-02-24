//
//  SplashController.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/24.
//

#import "SplashController.h"
#import <MyLayout/MyLayout.h>

@interface SplashController ()

@end

@implementation SplashController

- (void)initViews {
    [super initViews];
    [self setBackgroundColor:UIColor.whiteColor];
    
    [self initRelativeLayoutSafeArea];
    self.container.backgroundColor = UIColor.redColor;
}

- (void)initDatas {
    [super initDatas];
}

@end
