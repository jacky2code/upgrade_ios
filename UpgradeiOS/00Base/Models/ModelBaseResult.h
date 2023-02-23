//
//  ModelBaseResult.h
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import <Foundation/Foundation.h>
#import <YYModel/YYModel.h>
NS_ASSUME_NONNULL_BEGIN

@interface ModelBaseResult : NSObject
/// 请求状态1 成功
@property (nonatomic, copy) NSString *code;
/// 请求状态说明
@property (nonatomic, copy) NSString *message;
@end

NS_ASSUME_NONNULL_END
