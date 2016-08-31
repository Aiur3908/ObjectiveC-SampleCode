//
//  ViewController.m
//  ResizableImage
//
//  Created by esobi on 2016/8/31.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //讀取圖片
    UIImage *image = [UIImage imageNamed:@"ButtonIcon"];
    
    //決定重複區塊的位置
    CGFloat top = 10;
    CGFloat bottom = 10;
    CGFloat left = 10;
    CGFloat right = 10;

    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);

    //設置圖片
    image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    
    self.buttonImage.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
