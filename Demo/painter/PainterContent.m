//
//  PainterContent.m
//  painter
//
//  Created by 白昆仑 on 2017/5/16.
//  Copyright © 2017年 bkl. All rights reserved.
//

#import "PainterContent.h"

@implementation PainterContent

- (instancetype)init
{
    self = [super init];
    if (self) {
        _path = [UIBezierPath bezierPath];
        _path.lineCapStyle = kCGLineCapRound;
        _path.lineJoinStyle = kCGLineJoinRound;
        _path.lineWidth = 10;
        _path.flatness = 1;
        _color = [UIColor blackColor];
    }
    
    return self;
}

@end
