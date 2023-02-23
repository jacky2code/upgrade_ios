//
//  ModelLetterIndex.h
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "ModelBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModelLetterIndex : ModelBase

/// Title
@property (nonatomic, copy) NSString *strTitle;
/// Controller name
@property (nonatomic, copy) NSString *strVCName;
@property (nonatomic, strong) NSArray *arrSonSections;
@end

NS_ASSUME_NONNULL_END
