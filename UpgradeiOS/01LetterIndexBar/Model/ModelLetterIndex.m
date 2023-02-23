//
//  ModelLetterIndex.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "ModelLetterIndex.h"

@implementation ModelLetterIndex
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"strTitle" : @"title",
             @"strVCName" : @"vcName",
             @"arrSonSections" : @"sonSections"
    };
}
// 声明自定义类参数类型
+ (NSDictionary *)modelContainerPropertyGenericClass {
  return @{@"sonSections" : [ModelLetterIndex class]};
}
@end
