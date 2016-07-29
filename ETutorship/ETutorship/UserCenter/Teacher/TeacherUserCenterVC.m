//
//  TeacherUserCenterVC.m
//  ETutorship
//
//  Created by 何英健 on 16/7/20.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "TeacherUserCenterVC.h"
#import "TeacherUCTitleCell.h"
#import "TeacherUCInfoCell.h"
#import "TeacherUCMyPurchaseCell.h"
#import "TeacherUCMyUploadCell.h"
#import "TeacherUCMyOrderCell.h"

@interface TeacherUserCenterVC ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation TeacherUserCenterVC

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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"老师主页";
    
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate & DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            return 100;
        case 1:
            return 100;
        case 2:
            return 100;
        case 3:
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
            TeacherUCTitleCell *cell = [TeacherUCTitleCell teacherUCTitleCellWithTableView:tableView];
            return cell;
        }
        case 1:
        {
            TeacherUCInfoCell *cell = [TeacherUCInfoCell teacherUCInfoCellWithTableView:tableView];
            return cell;
        }
        case 2:
        {
            TeacherUCMyPurchaseCell *cell = [TeacherUCMyPurchaseCell teacherUCMyPurchaseCellWithTableView:tableView];
            return cell;
        }
        case 3:
        {
            TeacherUCMyUploadCell *cell = [TeacherUCMyUploadCell teacherUCMyUploadCellWithTableView:tableView];
            return cell;
        }
            
        default:
        {
            TeacherUCMyOrderCell *cell = [TeacherUCMyOrderCell teacherUCMyOrderCellWithTableView:tableView];
            return cell;
        }
    }
}


@end
