//
//  BaseController.m
//  UpgradeiOS
//  继承 UIViewController，把 viewDidLoad 方法拆分为三个方法，方便管理。
//  Created by jackys on 2023/2/23.
//

#import "BaseController.h"

@interface BaseController ()

@end

@implementation BaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"=== BaseController viewDidLoad ===");
    [self initViews];
    [self initDatas];
    [self initListeners];
}

/// MARK: - 控件布局
- (void)initViews {
    NSLog(@"=== BaseController initViews ===");
}
/// MARK: - 设置数据
- (void)initDatas {
    NSLog(@"=== BaseController initDatas ===");
}
/// MARK: - 设置监听器
- (void)initListeners {
    NSLog(@"=== BaseController initListeners ===");
}

@end
