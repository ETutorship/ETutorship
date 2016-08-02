//
//  ETBannerView.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ETBannerView;

@protocol ETBannerViewDelegate <NSObject>

@optional
- (void)bannerView:(ETBannerView *)bannerView didSelectIndex:(NSInteger)index;

@end


@interface ETBannerView : UIView

@property (nonatomic, strong) NSArray *imageDataArray;

@property (nonatomic, weak) NSTimer *timer;

@property (nonatomic, weak) id<ETBannerViewDelegate> delegate;

- (void)addTimer;
- (void)invalidateTimer;

@end
