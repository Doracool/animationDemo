//
//  QyView.m
//  02-绘制基本图形
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "QyView.h"

@implementation QyView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //画个圆角矩形
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:100];
    
    //设置填充色
    [[UIColor yellowColor] setFill];
    
    //绘制 (既描边又填充)
    [path fill];
    
    
    //绘制三次贝塞尔曲线
    UIBezierPath *BPath = [UIBezierPath bezierPath];
    
    //移动到一个点
    [BPath moveToPoint:CGPointMake(20, 20)];
    
    //添加贝塞尔曲线
    [BPath addCurveToPoint:CGPointMake(180, 180) controlPoint1:CGPointMake(40, 150) controlPoint2:CGPointMake(130, 0)];
    
    //设置描边
    [[UIColor purpleColor] setStroke];
    
    //绘制
    [BPath stroke];
}

@end
