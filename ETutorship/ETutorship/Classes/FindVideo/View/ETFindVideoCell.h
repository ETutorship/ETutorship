//
//  ETFindVideoCell.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ETFindVideoCell : UITableViewCell

+ (instancetype)findVideoCellWithTableView:(UITableView *)tableView;

@property (nonatomic, strong) NSString *dataModel;

@end
