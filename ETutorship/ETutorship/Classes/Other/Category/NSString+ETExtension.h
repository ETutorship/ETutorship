//
//  NSString+ETExtension.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/27.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ETExtension)

/**
 *  计算文本所占的尺寸
 *
 *  @param constraintSize  限制文本最大的尺寸
 *  @param fontSize        字体大小
 *
 *  @return 计算好的尺寸
 */
- (CGSize)sizeWithConstraintSize:(CGSize)constraintSize fontSize:(CGFloat)fontSize;

/**
 *  判断字符串是否为空
 *
 *  @param string 字符串
 *
 *  @return 结果
 */
+ (BOOL)isEmpty:(NSString *)string;

/**
 *  对字符串中特殊字符进行编码
 *
 *  @return 编码后的字符串
 */
- (NSString *)urlEncoded;

/**
 *  对字符串进行解码
 *
 *  @return 解码后的字符串
 */
- (NSString *)urlDecoded;

/**
 *  计算一段字符串的中文长度。（两个英文字符占一个长度）
 *
 *  @return 字符串的中文长度
 */
- (NSInteger)calculateChineseLength;

@end
