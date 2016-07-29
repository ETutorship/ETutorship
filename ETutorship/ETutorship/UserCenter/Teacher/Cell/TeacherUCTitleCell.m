//
//  TeacherUCTitleCell.m
//  ETutorship
//
//  Created by 何英健 on 16/7/20.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "TeacherUCTitleCell.h"

@interface TeacherUCTitleCell ()

@property (nonatomic, strong) IBOutlet UIImageView *icon;
@property (nonatomic, strong) IBOutlet UILabel *name;

@end

@implementation TeacherUCTitleCell

+ (instancetype)teacherUCTitleCellWithTableView:(UITableView *)tableView
{
    static NSString *reuseID = @"TeacherUCTitleCell";
    TeacherUCTitleCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"TeacherUCTitleCell" owner:nil options:nil][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        //设置圆形
        cell.icon.layer.cornerRadius = cell.icon.frame.size.width * 0.5;
        cell.icon.layer.masksToBounds = YES;
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
