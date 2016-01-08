//
//  BeerVIew.m
//  03-homeWork
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "BeerVIew.h"

@implementation BeerVIew


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawBeer];
    [self drawEye];
    [self drawDuzi];
    [self drawGebo];
    [self drawGeboRight];
    [self drawTui];
    [self drawTuiRight];
    [self drawDianyuan];
}

-(void)drawBeer{
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //添加圆弧路径
    CGRect aRect = CGRectMake(100, 80, 160, 100);
    CGContextAddEllipseInRect(ctx, aRect);
    CGContextSetLineWidth(ctx, 5);
//    [[UIColor whiteColor] setFill];
    CGContextDrawPath(ctx, kCGPathStroke);
    
}

-(void)drawEye
{
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [[UIColor blackColor] setFill];
    //添加圆弧路径
    CGRect aRect = CGRectMake(145, 120, 10, 25);
    CGContextAddEllipseInRect(ctx, aRect);
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    CGRect bRect = CGRectMake(205, 120, 10, 25);
    CGContextAddEllipseInRect(ctx, bRect);
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    CGContextMoveToPoint(ctx, 150, 133);
    CGContextAddLineToPoint(ctx, 210, 133);
    
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
}

-(void)drawDuzi
{
    UIBezierPath *Bpath = [UIBezierPath bezierPath];
    [Bpath moveToPoint:CGPointMake(130, 170)];
    
    Bpath.lineWidth = 5;
    //添加贝塞尔曲线
//    [Bpath addCurveToPoint:CGPointMake(130, 370) controlPoint1:CGPointMake(60, 270) controlPoint2:CGPointMake(120, 320)];
    [Bpath addQuadCurveToPoint:CGPointMake(130,360) controlPoint:CGPointMake(50, 300)];
    
    [Bpath addQuadCurveToPoint:CGPointMake(250, 350) controlPoint:CGPointMake(200, 380)];
    
    [Bpath addQuadCurveToPoint:CGPointMake(232, 170) controlPoint:CGPointMake(310, 300)];
    [[UIColor blackColor] setStroke];
    [Bpath stroke];
    
}

-(void)drawGebo{
    UIBezierPath *GPath = [UIBezierPath bezierPath];
    [GPath moveToPoint:CGPointMake(125, 180)];
    GPath.lineWidth = 5;
    [GPath addQuadCurveToPoint:CGPointMake(98, 320) controlPoint:CGPointMake(20, 290)];
    
    [GPath stroke];
}

-(void)drawGeboRight
{
    UIBezierPath *RPath = [UIBezierPath bezierPath];
    
    [RPath moveToPoint:CGPointMake(237, 180)];
    RPath.lineWidth = 5;
    //插兜
//    [RPath addQuadCurveToPoint:CGPointMake(225, 320) controlPoint:CGPointMake(300, 290)];
    [RPath addQuadCurveToPoint:CGPointMake(270, 320) controlPoint:CGPointMake(345, 290)];
    
    [RPath stroke];
}

-(void)drawTui
{
    UIBezierPath *TPath = [UIBezierPath bezierPath];
    
    [TPath moveToPoint:CGPointMake(125, 355)];
    TPath.lineWidth = 5;
    
    [TPath addQuadCurveToPoint:CGPointMake(155, 400) controlPoint:CGPointMake(125, 400)];
    
    [TPath addQuadCurveToPoint:CGPointMake(185, 370) controlPoint:CGPointMake(185, 400)];
    [TPath stroke];
    
}

-(void)drawTuiRight
{
    UIBezierPath *TPath = [UIBezierPath bezierPath];
    
    [TPath moveToPoint:CGPointMake(247, 350)];
    TPath.lineWidth =5;
    [TPath addQuadCurveToPoint:CGPointMake(217, 400) controlPoint:CGPointMake(247, 400)];
    
    [TPath addQuadCurveToPoint:CGPointMake(187, 368) controlPoint:CGPointMake(187, 400)];
    [TPath stroke];
}

-(void)drawDianyuan
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
//    CGContextAddArc(ctx, 120, 120, 50, 0, 2*M_PI, 0);
    
    CGContextSetLineWidth(ctx, 2);
    CGContextAddEllipseInRect(ctx, CGRectMake(200, 200, 30, 30));
    
    CGContextDrawPath(ctx, kCGPathStroke);
    
    CGContextMoveToPoint(ctx, 200, 215);
    CGContextAddLineToPoint(ctx, 208, 215);
    CGContextAddLineToPoint(ctx, 210, 210);
    CGContextAddLineToPoint(ctx, 220, 210);
    CGContextAddLineToPoint(ctx, 222, 215);
    CGContextAddLineToPoint(ctx, 230, 215);
    CGContextDrawPath(ctx, kCGPathStroke);
}
@end
