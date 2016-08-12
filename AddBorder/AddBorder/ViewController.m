//
//  ViewController.m
//  AddBorder
//
//  Created by esobi on 2016/8/12.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //設置邊框厚度為2
    self.myButton1.layer.borderWidth = 2;
    //設置邊框顏色為紅色
    self.myButton1.layer.borderColor = [UIColor redColor].CGColor;
    
    
    //加入上方邊框 厚度為2 顏色為紅色
    [self.myView1.layer addBorderWith:UIRectEdgeTop andColor:[UIColor redColor] andThickness:2];
    //加入右方邊框 厚度為2 顏色為藍色
    [self.myView1.layer addBorderWith:UIRectEdgeRight andColor:[UIColor blueColor] andThickness:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
