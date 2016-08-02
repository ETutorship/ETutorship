//
//  ETFindVideoVC.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETFindVideoVC.h"
#import "MainVC.h"
#import "ETSearchBar.h"
#import "ETFindVideoCell.h"
#import "ETBannerView.h"

@interface ETFindVideoVC () <UITableViewDelegate, UITableViewDataSource, ETBannerViewDelegate>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, weak) ETBannerView *bannerView;

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ETFindVideoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUpSubviews];
    
    [self loadData];
}

- (void)setUpSubviews
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"个人中心" forState:UIControlStateNormal];
    button.frame = CGRectMake(10, 20, 80, 44);
    [self.view addSubview:button];
    button.backgroundColor = [UIColor whiteColor];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushToUserVC) forControlEvents:UIControlEventTouchUpInside];
    
    ETSearchBar *searchBar = [[ETSearchBar alloc] init];
    [self.view addSubview:searchBar];
    searchBar.frame = CGRectMake(CGRectGetMaxX(button.frame), button.y, APP_WIDTH - button.width - 10, button.height);
    searchBar.placeholder = @"Search";
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(button.frame), APP_WIDTH, APP_HEIGHT - CGRectGetMaxY(button.frame) - self.tabBarController.tabBar.height) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.tableFooterView = [[UIView alloc] init];
    tableView.rowHeight = 100;
    
    ETBannerView *bannerView = [[ETBannerView alloc] initWithFrame:CGRectMake(0, 0, APP_WIDTH, 150)];
    bannerView.delegate = self;
    tableView.tableHeaderView = bannerView;
    self.bannerView = bannerView;
}

- (void)loadData
{
    self.dataArray = [NSMutableArray arrayWithObjects:@"初中辅导视频", @"高中辅导视频", nil];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSInteger i = 1; i < 6; i++) {
        NSString *name = [NSString stringWithFormat:@"00%ld.jpg", (long)i];
        UIImage *image = [UIImage imageNamed:name];
        [arrayM addObject:image];
    }
    
    self.bannerView.imageDataArray = arrayM;
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ETFindVideoCell *cell = [ETFindVideoCell findVideoCellWithTableView:tableView];
    cell.dataModel = self.dataArray[indexPath.row];
    return cell;
}

#pragma mark - ETBannerViewDelegate
- (void)bannerView:(ETBannerView *)bannerView didSelectIndex:(NSInteger)index
{
    ETLog(@"");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
