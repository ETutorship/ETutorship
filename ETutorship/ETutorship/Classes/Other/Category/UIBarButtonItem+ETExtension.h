//
//  UIBarButtonItem+ETExtension.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/28.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ETExtension)

+ (instancetype)barButtonItemWithNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

+ (NSArray *)barButtonItemsWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

+ (NSArray *)barButtonItemsWithNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage offset:(CGFloat)offset target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

@end
