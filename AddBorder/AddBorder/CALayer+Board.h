//
//  CALayer+Board.h
//  AddBorder
//
//  Created by esobi on 2016/8/12.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CALayer(Board)
-(void)addBorderWith : (UIRectEdge)edge andColor:(UIColor*)color andThickness: (CGFloat)thickness;
@end
