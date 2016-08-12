//
//  CALayer+Board.m
//  AddBorder
//
//  Created by esobi on 2016/8/12.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import "CALayer+Board.h"

@implementation CALayer(Border)

-(void)addBorderWith:(UIRectEdge)edge andColor:(UIColor *)color andThickness:(CGFloat)thickness{
    
    CALayer *border = [CALayer new];
    //根據方位設定邊框的frame
    switch (edge) {
            //上方
        case UIRectEdgeTop:
            border.frame = CGRectMake(0,0,CGRectGetWidth(self.frame),thickness);
            break;
            //下方
        case UIRectEdgeBottom:
            border.frame = CGRectMake(0, self.frame.size.height - thickness, self.frame.size.width, thickness);
            break;
            //左方
        case UIRectEdgeLeft:
            border.frame = CGRectMake(0, 0, thickness, CGRectGetHeight(self.frame));
            break;
            //右方
        case UIRectEdgeRight:
            border.frame = CGRectMake(CGRectGetWidth(self.frame) - thickness, 0, thickness, CGRectGetHeight(self.frame));
            break;
        default:
            break;
    }
    //設置邊框的顏色
    border.backgroundColor = color.CGColor;
    //加入邊框
    [self addSublayer:border];
}

@end