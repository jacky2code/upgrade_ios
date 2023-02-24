//
//  IndexTableView.m
//  LetterIndexBar
//
//  Created by jackys on 2023/2/23.
//

#import "IndexTableView.h"
#import "ViewReusablePool.h"

@interface IndexTableView () {
    UIView *containerView;
    ViewReusablePool *reusablePool;
}
@end

@implementation IndexTableView

- (void)reloadData {
    [super reloadData];
    
    // 懒加载
    if (containerView == nil) {
        containerView = [[UIView alloc] initWithFrame:CGRectZero];
        containerView.backgroundColor = UIColor.whiteColor;
        
        [self.superview insertSubview:containerView aboveSubview:self];
    }
    
    if (reusablePool == nil) {
        reusablePool = [[ViewReusablePool alloc] init];
    }
    
    // 标记所有view 为可重用状态
    [reusablePool reset];
    
    // reload 字母索引条
    [self reloadIndexBar];
    
}

- (void)reloadIndexBar {
    // 获取字母索引条的显示内容
    NSArray <NSString *> *arrTitles = nil;
    if ([self.indexTableViewDataSource respondsToSelector:(@selector(indexTitlesForIndexTableView:))]) {
        arrTitles = [self.indexTableViewDataSource indexTitlesForIndexTableView:self];
    }
    // 判断字母索引条是否为空
    if (!arrTitles || arrTitles.count == 0) {
        [containerView setHidden:YES];
        return;
    }
    
    NSInteger count = arrTitles.count;
    CGFloat btnWidth = 60;
    CGFloat btnHeight = self.frame.size.height / count;
    for (int i = 0; i < count; i++) {
        NSString *title = [arrTitles objectAtIndex:i];
        
        // 从重用池中取出一个button
        UIButton *button = (UIButton *)[reusablePool dequeueReusableView];
        if (button == nil) {
            button = [[UIButton alloc] initWithFrame:CGRectZero];
            button.backgroundColor = UIColor.whiteColor;
            
            [reusablePool addUsingView:button];
            NSLog(@"=== New button ===");
        } else {
            NSLog(@"=== Reusable button ===");
        }
        // add button to superview
        [containerView addSubview:button];
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
        
        [button setFrame:CGRectMake(0, i * btnHeight, btnWidth, btnHeight)];
    }
    
    [containerView setHidden:NO];
    [containerView setFrame:CGRectMake(self.frame.origin.x + self.frame.size.width - btnWidth, self.frame.origin.y, btnWidth, self.frame.size.height)];
    
}

@end
