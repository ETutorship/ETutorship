//
//  MainVC.m
//  ETutorship
//
//  Created by 何英健 on 16/6/20.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "MainVC.h"
#import "StudentUserCenterVC.h"
#import "TeacherUserCenterVC.h"

@implementation MainVC

- (void)viewDidLoad
{
    self.title = @"主页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.translucent = NO;
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(5, 5, 100, 30);
    btn1.backgroundColor = [UIColor redColor];
    [btn1 setTitle:@"学生主页" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(tapBtn1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(5, 65, 100, 30);
    btn2.backgroundColor = [UIColor blueColor];
    [btn2 setTitle:@"老师主页" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(tapBtn2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(5, 65, 100, 30);
    btn3.backgroundColor = [UIColor blueColor];
    [btn3 setTitle:@"老师主页" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(tapBtn3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
}

- (void)tapBtn1
{
    StudentUserCenterVC *vc = [[StudentUserCenterVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)tapBtn2
{
    TeacherUserCenterVC *vc = [[TeacherUserCenterVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)tapBtn3
{
    TeacherUserCenterVC *vc = [[TeacherUserCenterVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
