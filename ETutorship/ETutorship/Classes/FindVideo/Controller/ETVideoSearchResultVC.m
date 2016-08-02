//
//  ETVideoSearchResultVC.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETVideoSearchResultVC.h"
#import "ETSearchBar.h"
#import "ETVideoSearchResultTopBar.h"

@interface ETVideoSearchResultVC () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ETVideoSearchResultVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpSubviews];
    
    [self loadData];
}

- (void)setUpSubviews
{
    ETSearchBar *searchBar = [[ETSearchBar alloc] init];
    [self.view addSubview:searchBar];
    searchBar.frame = CGRectMake(0, 0, APP_WIDTH - 44 - 10, 44);
    searchBar.placeholder = @"Search";
    self.navigationItem.titleView = searchBar;
    
    ETVideoSearchResultTopBar *topBar = [ETVideoSearchResultTopBar videoSearchResultTopBar];
    [self.view addSubview:topBar];
    topBar.frame = CGRectMake(0, 64, APP_WIDTH, 44);
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(topBar.frame), APP_WIDTH, APP_HEIGHT - 64 - topBar.height) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.tableFooterView = [[UIView alloc] init];
    tableView.rowHeight = 100;
}

- (void)loadData
{
    self.dataArray = [NSMutableArray arrayWithObjects:@"物理教程", @"英语教程", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
