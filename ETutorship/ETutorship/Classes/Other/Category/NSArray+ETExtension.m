//
//  NSArray+ETExtension.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/27.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "NSArray+ETExtension.h"

@implementation NSArray (ETExtension)

// 使输出的json数据不会乱码
- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [strM appendFormat:@"\t%@,\n", obj];
    }];
    
    [strM appendString:@")"];
    
    return strM;
}

@end
