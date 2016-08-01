//
//  ETNavigationController.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETNavigationController.h"

@interface ETNavigationController ()

@end

@implementation ETNavigationController

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationBar.translucent = NO;
    
    CGFloat titleFontSize = 20;
    self.navigationBar.titleTextAttributes = @{NSFontAttributeName : [UIFont boldSystemFontOfSize:titleFontSize], NSForegroundColorAttributeName : [UIColor blackColor]};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES;
        
    }else {
        
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self.view endEditing:YES];
    [self popViewControllerAnimated:YES];
}

@end
