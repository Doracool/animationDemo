//
//  ShapeView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ShapeView.h"

@implementation ShapeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawRectAngel];
    [self drawTriangle];
}

//画矩形
-(void)drawRectAngel
{
    //获取上下文
   CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    
    //添加绘画路径
    CGContextAddRect(ctx, CGRectMake(100, 20, 100, 50));
    
    
    //设置描边
//    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    
    [[UIColor greenColor] setFill];
    
    //设置填充色
    CGContextSetFillColorWithColor(ctx, [UIColor greenColor].CGColor);
    //渲染
    CGContextDrawPath(ctx, kCGPathFillStroke);
    

}


-(void)drawTriangle
{
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //上下文移动到一个位置
    CGContextMoveToPoint(ctx, 0, 0);
    
    //添加一条线段
    CGContextAddLineToPoint(ctx, 0, 100);
    CGContextAddLineToPoint(ctx, 100, 50);
    
    //关闭路径(最后一个点和起始点连接)
    CGContextClosePath(ctx);
    
    //设置填充色
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    
    //设置描边
    [[UIColor yellowColor] setStroke];
    
    //渲染
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    
}

@end
