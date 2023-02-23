//
//  LetterIndexViewController.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "LetterIndexViewController.h"
#import "IndexTableView.h"

@interface LetterIndexViewController ()<UITableViewDataSource, UITableViewDelegate, IndexTableViewDataSource> {
    IndexTableView *tableView;
    UIButton *button;
    NSMutableArray *dataSource;
}

@end

@implementation LetterIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    tableView = [[IndexTableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height - 60) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    tableView.indexTableViewDataSource = self;
    
    [self.view addSubview:tableView];
    
    button = [[UIButton alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    button.backgroundColor = UIColor.blueColor;
    [button setTitle:@"reloadIndex" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(doAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    // data source
    dataSource = [NSMutableArray array];
    
    for (int i = 0; i < 100; i++) {
        [dataSource addObject:@(i+1)];
    }
}

# pragma mark IndexTableViewDataSource
- (NSArray<NSString *> *)indexTitlesForIndexTableView:(UITableView *)tableView {
    // 奇数次调用返回6个字母，偶数次调用返回11个
    static BOOL change = NO;
    if (change) {
        change = NO;
        return @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K"];
    } else {
        change = YES;
        return @[@"A", @"B", @"C", @"D", @"E", @"F"];
    }
}

# pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [dataSource count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indentifier = @"reuseID";
    // 从 UITableView 的重用池中取出cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (cell == nil) {
        // 重用池如果没有，则创建一个cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indentifier];
    }
    cell.textLabel.text = [[dataSource objectAtIndex:indexPath.row] stringValue];
    
    return cell;
}

# pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}

- (void)doAction:(id)sender {
    NSLog(@"=== reloadData ===");
    [tableView reloadData];
}


@end
