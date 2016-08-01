//
//  ETFindVideoVC.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETFindVideoVC.h"
#import "MainVC.h"

@interface ETFindVideoVC ()

@end

@implementation ETFindVideoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"个人中心" forState:UIControlStateNormal];
    button.frame = CGRectMake(10, 20, 80, 44);
    [self.view addSubview:button];
    button.backgroundColor = [UIColor whiteColor];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushToUserVC) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.translucent = YES;
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)pushToUserVC
{
    MainVC *mainVC = [[MainVC alloc] init];
    [self.navigationController pushViewController:mainVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
