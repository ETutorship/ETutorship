//
//  ETVideoSearchResultTopBar.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETVideoSearchResultTopBar.h"

@interface ETVideoSearchResultTopBar ()

@property (nonatomic, weak) IBOutlet UIButton *courseFieldButton;
@property (nonatomic, weak) IBOutlet UIButton *useRegion;
@property (nonatomic, weak) UIButton *selectedButton;

@end

@implementation ETVideoSearchResultTopBar

+ (instancetype)videoSearchResultTopBar
{
    return [[NSBundle mainBundle] loadNibNamed:@"ETVideoSearchResultTopBar" owner:nil options:nil][0];
}

- (void)awakeFromNib
{
    self.courseFieldButton.selected = YES;
    self.selectedButton = self.courseFieldButton;
}

- (IBAction)buttonClicked:(UIButton *)button
{
    if (button == self.selectedButton) {
        return;
    }
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
}

@end
