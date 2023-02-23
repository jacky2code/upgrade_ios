//
//  IndexTableView.h
//  LetterIndexBar
//
//  Created by jackys on 2023/2/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IndexTableViewDataSource <NSObject>

// 获取一个 tableview 字母索引条数据
- (NSArray <NSString *> *)indexTitlesForIndexTableView: (UITableView *)tableView;

@end

@interface IndexTableView : UITableView

@property (nonatomic, weak) id <IndexTableViewDataSource> indexTableViewDataSource;

@end

NS_ASSUME_NONNULL_END
