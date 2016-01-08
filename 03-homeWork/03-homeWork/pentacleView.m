//
//  pentacleView.m
//  03-homeWork
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "pentacleView.h"

@implementation pentacleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //创建上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //移动到一个点
    CGContextMoveToPoint(ctx, 110, 100);
    
    //移动
    CGContextAddLineToPoint(ctx, 210, 100);
    CGContextAddLineToPoint(ctx, 130, 160);
    CGContextAddLineToPoint(ctx, 155, 60);
    CGContextAddLineToPoint(ctx, 190, 160);
    CGContextClosePath(ctx);
    
    
    //线宽
    CGContextSetLineWidth(ctx, 10);
    //颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    //绘制
    CGContextDrawPath(ctx, kCGPathEOFill);
}


@end
