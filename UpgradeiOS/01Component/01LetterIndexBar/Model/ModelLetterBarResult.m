//
//  ModelLetterBarResult.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "ModelLetterBarResult.h"

@implementation ModelLetterBarResult
// 声明自定义类参数类型
+ (NSDictionary *)modelContainerPropertyGenericClass {
  return @{@"data" : [ModelLetterIndex class]};
}
@end
