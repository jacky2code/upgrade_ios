//
//  ViewController.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "ViewController.h"
#import "LetterIndexViewController.h"
#import "ModelLetterBarResult.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate> {
    UITableView *tableView;
    UIButton *button;
//    NSMutableArray *dataSource;
    NSMutableDictionary *dataDict;
}

@end

@implementation ViewController

- (NSMutableArray *)dataSource
{
    if (self.dataSource == nil) {
        self.dataSource = [NSMutableArray array];
    }
    return self.dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initRelativeLayoutSafeArea];
    
    [self initDatas];
    [self initViews];
}

- (void)initDatas{
    [super initDatas];
    // 如果没有数据则加载数据
    if (self.dataSource.count == 0) {
        NSString *filePath=[[NSBundle mainBundle] pathForResource:@"DataUpgrade"
                                                       ofType:@"geojson"];
        dataDict = [NSMutableDictionary dictionaryWithContentsOfFile:filePath];

        ModelLetterBarResult *barResult = [ModelLetterBarResult yy_modelWithJSON:dataDict];

        self.dataSource = [barResult.data mutableCopy];
    }
    
}

- (void)initViews {
    [super initViews];
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.container addSubview:tableView];
}

# pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSource.count;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    ModelLetterIndex *group = self.dataSource[section];
    return group.strTitle;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    ModelLetterIndex *group = self.dataSource[section];
    return group.arrSonSections.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indentifier = @"reuseID";
    // 从 UITableView 的重用池中取出cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (cell == nil) {
        // 重用池如果没有，则创建一个cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
    }
    ModelLetterIndex *group = self.dataSource[indexPath.section];
    ModelLetterIndex *item = [group.arrSonSections objectAtIndex:indexPath.row];
    
    cell.textLabel.text = item.strTitle;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ModelLetterIndex *group = self.dataSource[indexPath.section];
    ModelLetterIndex *item = [group.arrSonSections objectAtIndex:indexPath.row];
    BaseLogicController *destVc = [[NSClassFromString(item.strVCName) alloc] init];
    if ([item.strVCName isEqual:@"ViewController"]) {
        destVc = (ViewController *)destVc;
        destVc.dataSource = [item.arrSonSections mutableCopy];
    }
    [self.navigationController pushViewController:destVc animated:YES];
    // 当手指离开某行时，让某行的选中状态消失
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

# pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}


@end
