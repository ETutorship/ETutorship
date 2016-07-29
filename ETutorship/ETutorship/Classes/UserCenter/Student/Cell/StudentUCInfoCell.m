//
//  StudentUCInfoCell.m
//  ETutorship
//
//  Created by 何英健 on 16/7/20.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "StudentUCInfoCell.h"

@implementation StudentUCInfoCell

+ (instancetype)studentUCInfoCellWithTableView:(UITableView *)tableView
{
    static NSString *reuseID = @"StudentUCInfoCell";
    StudentUCInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"StudentUCInfoCell" owner:nil options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
