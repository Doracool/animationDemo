//
//  TextImageView.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "TextImageView.h"

@implementation TextImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawText];
    [self drawTextAndImage];
}

-(void)drawText
{
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    
    CGRect rect = CGRectMake(10, 50, 100, 50);
    
    CGContextAddRect(ctx, rect);
    
    [[UIColor orangeColor] set];
    
    CGContextDrawPath(ctx, kCGPathFillStroke);
    NSString *str = @"你瞅啥,瞅你咋地";
    
    NSMutableDictionary *attri = [NSMutableDictionary dictionary];
    
    attri[NSForegroundColorAttributeName] = [UIColor redColor];
    
    attri[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [str drawInRect:rect withAttributes:attri];
}

-(void)drawTextAndImage
{
    //获取图片
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    
    //画图片
    [image drawInRect:CGRectMake(0, 0, 200, 200)];
    
    //写文字
    NSString *str = @"我是一个水印";
    [str drawInRect:CGRectMake(140, 150, 100, 20) withAttributes:nil];
}
@end
