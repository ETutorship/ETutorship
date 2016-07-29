//
//  AppConfig.h
//  ETutorship
//
//  Created by 何英健 on 16/7/19.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#ifndef AppConfig_h
#define AppConfig_h

#define MAIN_SCREEN [UIScreen mainScreen]
#define APP_WIDTH  [UIScreen mainScreen].bounds.size.width
#define APP_HEIGHT  [UIScreen mainScreen].bounds.size.height

#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

#endif /* AppConfig_h */
