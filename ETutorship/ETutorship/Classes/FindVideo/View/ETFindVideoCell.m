//
//  ETFindVideoCell.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETFindVideoCell.h"

@interface ETFindVideoCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end


@implementation ETFindVideoCell

+ (instancetype)findVideoCellWithTableView:(UITableView *)tableView
{
    static NSString *reuseID = @"ETFindVideoCell";
    ETFindVideoCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ETFindVideoCell" owner:nil options:nil][0];
    }
    return cell;
}

- (void)setDataModel:(NSString *)dataModel
{
    _dataModel = dataModel;
    
    self.titleLabel.text = dataModel;
}

@end
