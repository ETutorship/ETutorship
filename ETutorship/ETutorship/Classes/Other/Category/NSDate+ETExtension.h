//
//  NSDate+ETExtension.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/27.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ETExtension)

/**
 *  是否为今天
 *
 *  @return bool
 */
- (BOOL)isToday;

/**
 *  是否为昨天
 *
 *  @return bool
 */
- (BOOL)isYesterday;

/**
 *  是否为今年
 *
 *  @return bool
 */
- (BOOL)isThisYear;

/**
 *  返回一个只有年月日的时间
 *
 *  @return NSDate
 */
- (NSDate *)dateWithYMD;

/**
 *  获得与当前时间的差距
 *
 *  @return NSDateComponents
 */
- (NSDateComponents *)deltaWithNow;

/**
 *  时间戳转换成对应时间字符串（可根据需求进行修改）
 *
 *  @param timeInterval 时间戳
 *
 *  @return 对应的时间字符串
 */
+ (NSString *)timeWithTimeInterval:(NSInteger)timeInterval;

/**
 *  返回当前日期的时间戳
 *
 *  @return 当前时间戳
 */
+ (NSString *)currentTimeInterval;

/**
 *  获取当前时区对应的时间
 *
 *  @return 当前时区对应的时间
 */
+ (NSDate *)dateOfLocalTimeZone;

@end
