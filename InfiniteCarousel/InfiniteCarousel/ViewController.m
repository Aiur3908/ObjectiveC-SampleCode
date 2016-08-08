//
//  ViewController.m
//  InfiniteCarousel
//
//  Created by esobi on 2016/8/8.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //設定為翻頁模式
    [self.scrollView setPagingEnabled:YES];
    //隱藏垂直scroll bar的顯示
    [self.scrollView setShowsVerticalScrollIndicator:NO];
    //隱藏水平scroll bar的顯示
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
