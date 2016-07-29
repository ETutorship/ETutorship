//
//  StudentUserCenterVC.m
//  ETutorship
//
//  Created by 何英健 on 16/6/20.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "StudentUserCenterVC.h"
#import "StudentUCTitleCell.h"
#import "StudentUCInfoCell.h"
#import "StudentUCVideoCell.h"

@interface StudentUserCenterVC ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation StudentUserCenterVC

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, APP_WIDTH, APP_HEIGHT - 64)];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.dataSource = (id)self;
        _tableView.delegate = (id)self;
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    }
    
    return _tableView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"学生主页";
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDelegate & DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            return 100;
        case 1:
            return 100;
            
        default:
            return 400;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            StudentUCTitleCell *cell = [StudentUCTitleCell studentUCTitleCellWithTableView:tableView];
            return cell;
        }
        case 1:
        {
            StudentUCInfoCell *cell = [StudentUCInfoCell studentUCInfoCellWithTableView:tableView];
            return cell;
        }
            
        default:
        {
            StudentUCVideoCell *cell = [StudentUCVideoCell studentUCVideoCellWithTableView:tableView];
            return cell;
        }
    }
}

@end
