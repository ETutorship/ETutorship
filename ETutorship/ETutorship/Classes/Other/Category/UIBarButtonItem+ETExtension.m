//
//  UIBarButtonItem+ETExtension.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/28.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "UIBarButtonItem+ETExtension.h"

@implementation UIBarButtonItem (ETExtension)

+ (instancetype)barButtonItemWithNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:normalImage forState:UIControlStateNormal];
    [btn setBackgroundImage:highlightedImage forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:controlEvents];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return barButtonItem;
}

+ (NSArray *)barButtonItemsWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    return [self barButtonItemsWithNormalImage:image highlightedImage:highImage offset:5 target:target action:action forControlEvents:controlEvents];
}

+ (NSArray *)barButtonItemsWithNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage offset:(CGFloat)offset target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    UIBarButtonItem *barButtonItem = [UIBarButtonItem barButtonItemWithNormalImage:normalImage highlightedImage:highlightedImage target:target action:action forControlEvents:controlEvents];
    
    // 调整barButtonItem的位置
    UIBarButtonItem *fixedSpaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixedSpaceItem.width = -offset;
    
    return @[fixedSpaceItem, barButtonItem];
}

@end
