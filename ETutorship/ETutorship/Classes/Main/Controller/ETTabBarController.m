//
//  ETTabBarController.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETTabBarController.h"
#import "ETNavigationController.h"
#import "ETFindTeacherVC.h"
#import "ETFindVideoVC.h"

@interface ETTabBarController ()

@end

@implementation ETTabBarController

+ (void)initialize
{
    UITabBarItem *tabBarItem = [UITabBarItem appearanceWhenContainedIn:[self class], nil];
    
    UIColor *normalTextColor = RGB(51, 51, 51);
    UIColor *selectedTextColor = MAIN_COLOR;
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10], NSForegroundColorAttributeName : normalTextColor} forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10], NSForegroundColorAttributeName : selectedTextColor} forState:UIControlStateSelected];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBar.translucent = NO;
    [self setUpAllChildViewControllers];
}

- (void)setUpAllChildViewControllers
{
    ETFindVideoVC *findVideoVC = [[ETFindVideoVC alloc] init];
    [self setUpOneChildViewController:findVideoVC image:[[UIImage imageNamed:@"buttom_icon1"] originalImage] selectedImage:[[UIImage imageNamed:@"buttom_iconon1"] originalImage] tabBarTitle:@"找视频" navigationTitle:@"找视频"];
    
    ETFindTeacherVC *findTeacherVC = [[ETFindTeacherVC alloc] init];
    [self setUpOneChildViewController:findTeacherVC image:[[UIImage imageNamed:@"buttom_icon2"] originalImage] selectedImage:[[UIImage imageNamed:@"buttom_iconon2"] originalImage] tabBarTitle:@"找老师" navigationTitle:@"找老师"];
}

- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selectedImage:(UIImage *)selectedImage tabBarTitle:(NSString *)tabBarTitle navigationTitle:(NSString *)navigationTitle
{
    ETNavigationController *nav = [self setUpNavController:vc image:image selectedImage:selectedImage tabBarTitle:tabBarTitle navigationTitle:navigationTitle];
    
    [self addChildViewController:nav];
}

- (ETNavigationController *)setUpNavController:(UIViewController *)vc image:(UIImage *)image selectedImage:(UIImage *)selectedImage tabBarTitle:(NSString *)tabBarTitle navigationTitle:(NSString *)navigationTitle
{
    ETNavigationController *nav = [[ETNavigationController alloc] initWithRootViewController:vc];
    
    vc.navigationItem.title = navigationTitle;
    
    nav.tabBarItem.title = tabBarTitle;
    
    nav.tabBarItem.image = image;
    nav.tabBarItem.selectedImage = selectedImage;
    
    [nav.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    
    return nav;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
