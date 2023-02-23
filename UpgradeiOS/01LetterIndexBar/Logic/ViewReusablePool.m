//
//  ViewReusablePool.m
//  LetterIndexBar
//
//  Created by jackys on 2023/2/23.
//

#import "ViewReusablePool.h"

@interface ViewReusablePool ()
// 等待使用的队列
@property (nonatomic, strong) NSMutableSet *waitUsedQueue;
// 使用中的队列
@property (nonatomic, strong) NSMutableSet *usingdQueue;
@end

@implementation ViewReusablePool

- (instancetype)init
{
    self = [super init];
    if (self) {
        _waitUsedQueue = [NSMutableSet set];
        _usingdQueue = [NSMutableSet set];
    }
    return self;
}

/// 从重用池中取出一个可重用的view
- (UIView *)dequeueReusableView {
    UIView *view = [_waitUsedQueue anyObject];
    if (view == nil) {
        return nil;
    } else {
        [_waitUsedQueue removeObject:view];
        [_usingdQueue addObject:view];
        return view;
    }
}

// 向重用池中添加一个view
- (void)addUsingView:(UIView *)view {
    if (view == nil) {
        return;
    }
    
    // 添加view 到使用中的队列
    [_usingdQueue addObject:view];
}

// 重置，将当前使用的view移动到可重用队列中
- (void)reset {
    UIView *view = nil;
    while ((view = [_usingdQueue anyObject])) {
        // 从使用中队列移除
        [_usingdQueue removeObject:view];
        // 加入等待使用队列
        [_waitUsedQueue addObject:view];
    }
}
@end
