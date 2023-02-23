//
//  ModelBaseParam.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "ModelBaseParam.h"

@implementation ModelBaseParam
- (id)init
{
    if (self = [super init]) {
        // 默认值 如：
        self.token = @"";
    }
    return self;
}

+ (instancetype)param
{
    return [[self alloc] init];
}
@end
