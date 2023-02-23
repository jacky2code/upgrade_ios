//
//  BaseCommonController.m
//  UpgradeiOS
//  继承 BaseController，不同项目可以复用的逻辑，例如：设置背景颜色方法等。
//  Created by jackys on 2023/2/23.
//

#import "BaseCommonController.h"

@interface BaseCommonController ()

@end

@implementation BaseCommonController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackgroundColor:UIColor.whiteColor];
}

// MARK: - 设置背景颜色
- (void)setBackgroundColor:(UIColor *)color {
    self.view.backgroundColor = color;
}

@end
