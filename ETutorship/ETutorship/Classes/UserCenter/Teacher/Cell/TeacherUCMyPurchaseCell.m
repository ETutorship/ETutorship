//
//  TeacherUCMyPurchaseCell.m
//  ETutorship
//
//  Created by 何英健 on 16/7/20.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "TeacherUCMyPurchaseCell.h"

@implementation TeacherUCMyPurchaseCell

+ (instancetype)teacherUCMyPurchaseCellWithTableView:(UITableView *)tableView
{
    static NSString *reuseID = @"TeacherUCMyPurchaseCell";
    TeacherUCMyPurchaseCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"TeacherUCMyPurchaseCell" owner:nil options:nil][0];
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
