//
//  CircleView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //添加圆弧
    [self drawArc];
    [self drawS];
}

-(void)drawArc
{
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //添加圆弧路径
    /*
     *ctx  图形上下文
     *CGFloat x，中心坐标x轴
     *CGFloat y, 中心左边y轴
     *radius  半径
     *CGFloat startAndle
     *CGFloat endANgle
     *
     */
    CGContextAddArc(ctx, 100, 100, 50, M_PI_2, M_PI, 0);
    
   
    
    CGContextAddArc(ctx, 100, 200, 50, -M_PI_2, M_PI, 0);
    //绘制
    CGContextClosePath(ctx);
    CGContextStrokePath(ctx);
    
}

//绘制一个圆形
-(void)drawS
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextAddArc(ctx, 120, 120, 50, 0, 2*M_PI, 0);
    
//    CGContextDrawPath(ctx, kCGPathEOFill);
    
    CGContextStrokePath(ctx);
    
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 50, 50, 50));
    
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
    
    CGContextFillPath(ctx);
}
@end
