//
//  ViewReusablePool.h
//  LetterIndexBar
//
//  Created by jackys on 2023/2/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN
// 实现重用机制类
@interface ViewReusablePool : NSObject

/// 从重用池中取出一个可重用的view
- (UIView *)dequeueReusableView;

/// 向重用池中添加一个view
- (void)addUsingView:(UIView *)view;

/// 重置，将当前使用的view移动到可重用队列中
- (void)reset;

@end

NS_ASSUME_NONNULL_END
