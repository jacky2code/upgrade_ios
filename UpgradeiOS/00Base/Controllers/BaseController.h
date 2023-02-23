//
//  BaseController.h
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import <UIKit/UIKit.h>
#import "MyLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseController : UIViewController

// MARK: - 控件布局
- (void)initViews;
// MARK: - 设置数据
- (void)initDatas;
// MARK: - 设置监听器
- (void)initListeners;
@end

NS_ASSUME_NONNULL_END
