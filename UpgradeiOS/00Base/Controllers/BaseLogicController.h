//
//  BaseLogicController.h
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "BaseCommonController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseLogicController : BaseCommonController
/// 根容器
@property (nonatomic, strong) MyBaseLayout *rootContainer;
    
/// 头部容器
@property (nonatomic, strong) MyBaseLayout *headerContainer;
/// 头部内容容器
@property (nonatomic, strong) MyBaseLayout *headerContentContainer;
    
/// 主内容容器
@property (nonatomic, strong) MyBaseLayout *container;
    
/// 底部容器
@property (nonatomic, strong) MyBaseLayout *footerContainer;
/// 底部内容容器
@property (nonatomic, strong) MyBaseLayout *footerContentContainer;

/// 数据
@property (nonatomic, strong) NSMutableArray *dataSource;

/// MARK: - 初始化垂直方向的 LinearLayout 容器
- (void)initLinearLayout;

/// MARK: - 初始化RelativeLayout容器，四边都在安全区内
- (void)initRelativeLayoutSafeArea;

///// MARK: - 头部容器，安全区外，用来设置头部到安全区外背景颜色
//- (void)initHeaderContainer;
//
///// MARK: - 底部容器，安全区外，用来设置底部到安全区外背景颜色
//- (void)initFooterContainer;

@end

NS_ASSUME_NONNULL_END
