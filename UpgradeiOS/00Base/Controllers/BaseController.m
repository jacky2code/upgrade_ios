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
    [self initViews];
    [self initDatas];
    [self initListeners];
    
}

/// MARK: - 控件布局
- (void)initViews {
}
/// MARK: - 设置数据
- (void)initDatas {
}
/// MARK: - 设置监听器
- (void)initListeners {
}

@end
