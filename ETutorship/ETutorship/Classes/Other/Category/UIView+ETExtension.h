//
//  UIView+ETExtension.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/28.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ETExtension)

/*
 快速set和get UIView的frame中的成员
 */
@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGSize size;
@property (assign, nonatomic) CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

@end
