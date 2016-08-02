//
//  ETSearchBar.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETSearchBar.h"

@implementation ETSearchBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.background = [[UIImage imageNamed:@"searchBarBg"] resizeImage];
        
        self.leftViewMode = UITextFieldViewModeAlways;
        self.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchIcon"]];
        self.rightViewMode = UITextFieldViewModeAlways;
        self.rightView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchIcon"]];
        self.tintColor = RGB(51, 51, 51);
        
        self.font = [UIFont systemFontOfSize:15];
    }
    return self;
}

@end
