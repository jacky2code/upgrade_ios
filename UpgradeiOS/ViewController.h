//
//  ViewController.h
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import <UIKit/UIKit.h>
#import "BaseLogicController.h"

@interface ViewController : BaseLogicController
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableDictionary *dataDict;
@end

