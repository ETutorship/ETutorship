//
//  UIImage+ETExtension.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/28.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ETExtension)

/**
 *  拉伸一张图片内部中间 1 * 1的区域，使其外部不变形
 *
 *  @return 已拉伸好的图片
 */
- (UIImage *)resizeImage;

/**
 *  加载最原始的没有渲染的图片(iOS7开始会将导航条和tabBar上的图片渲染成蓝色)
 *
 *  @return 原始图片
 */
- (UIImage *)originalImage;

@end
