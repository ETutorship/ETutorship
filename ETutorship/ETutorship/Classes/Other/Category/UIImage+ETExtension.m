//
//  UIImage+ETExtension.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/28.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "UIImage+ETExtension.h"

@implementation UIImage (ETExtension)

- (UIImage *)resizeImage
{
    return [self stretchableImageWithLeftCapWidth:self.size.width * 0.5 topCapHeight:self.size.height * 0.5];
}

- (UIImage *)originalImage
{
    return [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
