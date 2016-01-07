//
//  LineView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "LineView.h"

@implementation LineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //移动到一个点 (10,10)
    CGContextMoveToPoint(ctx, 10, 10);
    
    //设置线段的相关属性  线段的宽度
    CGContextSetLineWidth(ctx, 10);
    
    //设置线段的颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    
    //线段头的样式
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    //画一条线段
    CGContextAddLineToPoint(ctx, 80, 180);
    
    //渲染
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    //画第二条线段
    CGContextMoveToPoint(ctx, 100, 20);
    
//    CGContextSetStrokeColorWithColor(ctx, [UIColor yellowColor].CGColor);
    
    CGContextSetRGBStrokeColor(ctx, 0.5, 0.2, 0.2, 1.0);
    
    //移动
    CGContextAddLineToPoint(ctx, 100, 100);
    
    CGContextAddLineToPoint(ctx, 150, 100);
    
    //设置拐角
    CGContextSetLineJoin(ctx, kCGLineJoinMiter);

    
    //渲染
    CGContextStrokePath(ctx);
}


@end
