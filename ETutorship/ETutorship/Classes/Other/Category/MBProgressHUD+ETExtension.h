//
//  MBProgressHUD+Extension.h
//  MyCategory
//
//  Created by OuYangQiuPing on 15/4/14.
//  Copyright (c) 2015年 OuYang. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (ETExtension)

+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;


+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;

+(void)showNetMessage:(NSString *)message;

@end
