//
//  DateUtil.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/24.
//

#import "DateUtil.h"

@implementation DateUtil
+ (NSInteger)getCurrentYear {
    NSDate *date = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    unsigned int unitFlags = NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay;
    NSDateComponents *d = [calendar components:unitFlags fromDate:date];
    NSInteger year = [d year];
//    NSInteger month = [d month];
//    NSInteger day = [d day];
    return  year;
}
@end
