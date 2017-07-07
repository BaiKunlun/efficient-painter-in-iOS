//
//  PainterView.h
//  painter
//
//  Created by 白昆仑 on 2017/5/16.
//  Copyright © 2017年 bkl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PainterView : UIView

- (instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic, strong, readonly) UIImage *snapImage;
@property (nonatomic, strong) UIColor *paintColor;
@property (nonatomic, assign) CGFloat paintWidth;

@end
