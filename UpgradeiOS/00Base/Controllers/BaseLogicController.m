//
//  BaseLogicController.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "BaseLogicController.h"

@interface BaseLogicController ()

@end

@implementation BaseLogicController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initViews];
}

- (void)initViews {
    [super initViews];
}

/// MARK: - 初始化RelativeLayout容器，四边都在安全区内
- (void)initRelativeLayoutSafeArea {
    [self initLinearLayout];
    //header
    [self initHeaderContainer];
    self.container =   [MyRelativeLayout new];
    self.container.myWidth = MyLayoutSize.fill;
    self.container.myHeight = MyLayoutSize.fill;
    self.container.backgroundColor = UIColor.clearColor;
    [self.rootContainer addSubview:self.container];
    [self initFooterContainer];
}

/// MARK: - 初始化垂直方向的 LinearLayout 容器
- (void)initLinearLayout {
    self.rootContainer = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    self.rootContainer.myWidth = MyLayoutSize.fill;
    self.rootContainer.myHeight = MyLayoutSize.fill;
    self.rootContainer.backgroundColor = UIColor.clearColor;
    [self.view addSubview:self.rootContainer];
}

/// MARK: - 头部容器，安全区外，用来设置头部到安全区外背景颜色
- (void)initHeaderContainer {
    self.headerContainer = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    self.headerContainer.myWidth = MyLayoutSize.fill;
    self.headerContainer.myHeight = MyLayoutSize.wrap;
    self.headerContainer.backgroundColor = UIColor.clearColor;
    
    // 头部内容容器，安全区内
    self.headerContentContainer = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    self.headerContentContainer.myHeight = MyLayoutSize.wrap;
    self.headerContentContainer.myLeading = MyLayoutPos.safeAreaMargin;
    self.headerContentContainer.myTrailing = MyLayoutPos.safeAreaMargin;
    self.headerContentContainer.myTop = MyLayoutPos.safeAreaMargin;
    self.headerContentContainer.backgroundColor = UIColor.clearColor;

    [self.headerContainer addSubview:self.headerContentContainer];
    [self.rootContainer addSubview:self.headerContainer];
}

/// MARK: - 底部容器，安全区外，用来设置底部到安全区外背景颜色
- (void)initFooterContainer {
    self.footerContainer = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    self.footerContainer.myWidth = MyLayoutSize.fill;
    self.footerContainer.myHeight = MyLayoutSize.wrap;
    self.footerContainer.backgroundColor = UIColor.clearColor;
    
    // 底部部内容容器，安全区内
    self.footerContentContainer = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    self.footerContentContainer.myHeight = MyLayoutSize.wrap;
    self.footerContentContainer.myLeading = MyLayoutPos.safeAreaMargin;
    self.footerContentContainer.myTrailing = MyLayoutPos.safeAreaMargin;
    self.footerContentContainer.myBottom = MyLayoutPos.safeAreaMargin;
    self.footerContentContainer.backgroundColor = UIColor.clearColor;

    [self.footerContainer addSubview:self.footerContentContainer];
    [self.rootContainer addSubview:self.footerContainer];
}

@end
