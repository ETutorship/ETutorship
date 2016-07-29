//
//  NSString+ETExtension.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/27.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "NSString+ETExtension.h"

@implementation NSString (ETExtension)

- (CGSize)sizeWithConstraintSize:(CGSize)constraintSize fontSize:(CGFloat)fontSize
{
    return [self boundingRectWithSize:constraintSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} context:nil].size;
}

+ (BOOL)isEmpty:(NSString *)string {
    if (string == nil) {
        return YES;
    }
    NSString *result;
    if ([string respondsToSelector:@selector(stringByReplacingOccurrencesOfString:withString:)]) {
        result = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    }
    if ([result length] == 0) {
        return YES;
    }
    return NO;
}

- (NSString *)urlEncoded
{
    NSString * encodedStr = CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,(CFStringRef)self,NULL,(CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]",kCFStringEncodingUTF8));
    return encodedStr;
}

- (NSString *)urlDecoded

{
    NSString *decodedString  = (__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL, (__bridge CFStringRef)self, CFSTR(""), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    return decodedString;
}

- (NSInteger)calculateChineseLength
{
    int stringLength = 0;
    char *p = (char *)[self cStringUsingEncoding:NSUnicodeStringEncoding];
    for (NSInteger i = 0; i < [self lengthOfBytesUsingEncoding:NSUnicodeStringEncoding]; i++) {
        if (*p) {
            p++;
            stringLength++;
        }else {
            p++;
        }
    }
    
    return (stringLength + 1 ) / 2;
}

@end
