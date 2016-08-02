//
//  ETBannerView.m
//  ETutorship
//
//  Created by OuYangQiuPing on 16/8/2.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

#import "ETBannerView.h"

#define kScrollContentCount 3

@interface ETBannerView () <UIScrollViewDelegate>

@property (nonatomic, weak) UIScrollView *scrollView;

@property (nonatomic, weak) UIImageView *displayView;
@property (nonatomic, weak) UIImageView *reuseView;

//当前图片的索引
@property (nonatomic, assign) NSInteger index;

@end

@implementation ETBannerView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 添加点击手势
        UITapGestureRecognizer *tapGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
        [self addGestureRecognizer:tapGest];
        
        UIScrollView *scrollView = [[UIScrollView alloc] init];
        scrollView.scrollsToTop = NO;
        [self addSubview:scrollView];
        self.scrollView = scrollView;
        scrollView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        scrollView.backgroundColor = [UIColor redColor];
        
        UIImageView *firstView = [[UIImageView alloc] init];
        firstView.userInteractionEnabled = YES;
        firstView.contentMode = UIViewContentModeScaleAspectFill;
        [scrollView addSubview:firstView];
        self.displayView = firstView;
        
        UIImageView *secondView = [[UIImageView alloc] init];
        secondView.userInteractionEnabled = YES;
        secondView.contentMode = UIViewContentModeScaleAspectFill;
        [scrollView addSubview:secondView];
        self.reuseView = secondView;
        
        scrollView.pagingEnabled = YES;
        scrollView.contentSize = CGSizeMake(frame.size.width * kScrollContentCount, 0);
        scrollView.showsHorizontalScrollIndicator = NO;
        scrollView.delegate = self;
        scrollView.bounces = NO;
        
        // 让scrollView定位在 中间那个imageview的位置
        scrollView.contentOffset = CGPointMake(frame.size.width, 0);
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(invalidateTimer) name:UIApplicationWillResignActiveNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(addTimer) name:UIApplicationDidBecomeActiveNotification object:nil];
    }
    return self;
}

- (void)tap
{
    if ([self.delegate respondsToSelector:@selector(bannerView:didSelectIndex:)]) {
        [self.delegate bannerView:self didSelectIndex:(self.index % self.imageDataArray.count)];
    }
}

- (void)setImageDataArray:(NSArray *)imageDataArray
{
    _imageDataArray = imageDataArray;
    
    if (!self.timer) {
        [self addTimer];
    }
    
    if (imageDataArray.count == 1) {
        [self.timer invalidate];
        self.scrollView.scrollEnabled = NO;
        
    }else if (imageDataArray.count == 0) {
        [self.timer invalidate];
        self.scrollView.scrollEnabled = NO;
        
    }else {
        self.scrollView.scrollEnabled = YES;
    }
    
    [self setImageIsNext:YES];
}

#pragma mark 添加、移除定时器
- (void)addTimer
{
    if (self.timer) {
        return;
    }
    NSTimer *timer = [NSTimer timerWithTimeInterval:3.0f target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    [runLoop addTimer:timer forMode:NSDefaultRunLoopMode];
    self.timer = timer;
}

- (void)invalidateTimer
{
    [self.timer invalidate];
}

#pragma mark 定时器调用的方法
- (void)nextImage
{
    [self.scrollView sendSubviewToBack:self.reuseView];
    
    [self setImageViewFrameIsNext:YES];
    [self setImageIsNext:YES];
    
    CGFloat width = self.scrollView.frame.size.width;
    CGFloat height = self.scrollView.frame.size.height;
    
    [UIView animateWithDuration:0.5f animations:^{
        self.displayView.frame = CGRectMake(0, 0, width, height);
        self.reuseView.frame = CGRectMake(width, 0, width, height);
        
    } completion:^(BOOL finished) {
        UIImageView *tmp = self.displayView;
        self.displayView = self.reuseView;
        self.reuseView = tmp;
        
        self.index++;
    }];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.scrollView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    
    [self setImageViewFrameIsNext:YES];
}

#pragma mark 设置imageView的frame
- (void)setImageViewFrameIsNext:(BOOL)isNext
{
    CGFloat width = self.scrollView.frame.size.width;
    CGFloat height = self.scrollView.frame.size.height;
    
    self.displayView.frame = CGRectMake(width, 0, width, height);
    
    if (isNext) {
        self.reuseView.frame = CGRectMake(width * 2, 0, width, height);
    }else {
        self.reuseView.frame = CGRectMake(0, 0, width, height);
    }
    
}

#pragma mark 设置imageView的image
- (void)setImageIsNext:(BOOL)isNext
{
    NSInteger count = self.imageDataArray.count;
    
    if (count) {
        while (self.index  < 0) {
            self.index += count;
        }
        
        self.displayView.image = self.imageDataArray[self.index % count];
        if (isNext) {
            self.reuseView.image = self.imageDataArray[(self.index + 1) % count];
        }else {
            self.reuseView.image = self.imageDataArray[(self.index + count - 1) % count];
        }
    }
}

#pragma mark scrollView代理方法
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.timer invalidate];
    self.timer = nil;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self addTimer];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.x > scrollView.frame.size.width) {
        [self setImageViewFrameIsNext:YES];
        [self setImageIsNext:YES];
    }else {
        [self setImageViewFrameIsNext:NO];
        [self setImageIsNext:NO];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGFloat width = scrollView.frame.size.width;
    
    int page = scrollView.contentOffset.x / width;
    if(page == 1) {
        return;
    } else if (page == 0) {
        [self pageMoveToRight];
    } else {
        [self pageMoveToLeft];
    }
    
    [scrollView setContentOffset:CGPointMake(width, 0) animated:NO];
}

#pragma mark - 左移和右移
- (void)pageMoveToRight
{
    self.index--;
    
    UIImageView *tmp = self.displayView;
    self.displayView = self.reuseView;
    self.reuseView = tmp;
    
    [self setImageViewFrameIsNext:NO];
    [self setImageIsNext:NO];
    
}

- (void)pageMoveToLeft
{
    self.index++;
    
    UIImageView *tmp = self.displayView;
    self.displayView = self.reuseView;
    self.reuseView = tmp;
    
    [self setImageViewFrameIsNext:YES];
    [self setImageIsNext:YES];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
