//
//  ModelBaseParam.h
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import <Foundation/Foundation.h>
#import <YYModel/YYModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModelBaseParam : NSObject
/// token
@property (nonatomic, strong) NSString *token;
/// 版本号
@property (nonatomic, strong) NSString *version;

+ (instancetype)param;
@end

NS_ASSUME_NONNULL_END
