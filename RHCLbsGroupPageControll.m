//
//  RHCLbsGroupPageControll.m
//  RenrenOfficial-iOS-Concept
//
//  Created by renren-ccbo on 13-8-9.
//  Copyright (c) 2013年 renren. All rights reserved.
//

#import "RHCLbsGroupPageControll.h"

@interface RHCLbsGroupPageControll()
@property(nonatomic,strong)UIImage *activeImage;
@property(nonatomic,strong)UIImage *inactiveImage;
@end

@implementation RHCLbsGroupPageControll

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.activeImage = [UIImage imageForKey:@"lbs_active_page_image"];
        self.inactiveImage = [UIImage imageForKey:@"lbs_inactive_page_image"];
        self.userInteractionEnabled = NO;
    }
    return self;
}
- (id)init{
    self = [super init];
    if (self) {
        self.activeImage = [UIImage imageForKey:@"lbs_active_page_image"];
        self.inactiveImage = [UIImage imageForKey:@"lbs_inactive_page_image"];
        self.userInteractionEnabled = NO;
    }
    return self;
}
-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.activeImage = [UIImage imageForKey:@"lbs_active_page_image"];
        self.inactiveImage = [UIImage imageForKey:@"lbs_inactive_page_image"];
        self.userInteractionEnabled = NO;
    }
    return self;
}
- (void)dealloc{
    self.activeImage = nil;
    self.inactiveImage = nil;
}
- (void)updateDots
{
    for (int i = 0; i < [self.subviews count]; i++)
    {
        UIView* dot = [self.subviews objectAtIndex:i];
        UIImageView *dotImageView = [[UIImageView alloc] initWithFrame:dot.bounds];
        [dot addSubview:dotImageView];
        if (i == self.currentPage)
            dotImageView.image = self.activeImage;
        else dotImageView.image = self.inactiveImage;
    }
}

- (void)setNumberOfPages:(NSInteger)numberOfPages{
    [super setNumberOfPages:numberOfPages];
    [self setCurrentPage:0];
}

- (void) setCurrentPage:(NSInteger)page
{
    [super setCurrentPage:page];
    [self updateDots];
}

@end
