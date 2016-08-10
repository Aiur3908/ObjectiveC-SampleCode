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
    //決定寬高等於螢幕寬，高度等於scrollView的高
    CGFloat width, height;
    width = self.view.frame.size.width;
    height = self.scrollView.frame.size.height;
    
    //設定為翻頁模式
    [self.scrollView setPagingEnabled:YES];
    //隱藏垂直scroll bar的顯示
    [self.scrollView setShowsVerticalScrollIndicator:NO];
    //隱藏水平scroll bar的顯示
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
    //設定ContentSize
    [self.scrollView setContentSize:CGSizeMake(width * 3, height)];
    //設定delegate
    [self.scrollView setDelegate:self];
    
    //第一頁
    UIView *page1View = [[UIView alloc]initWithFrame:CGRectMake(width * 0, 0, width, height)];
    page1View.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:page1View];
    
    //第二頁
    UIView *page2View = [[UIView alloc]initWithFrame:CGRectMake(width * 1, 0, width, height)];
    page2View.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:page2View];
    
    //第三頁
    UIView *page3View = [[UIView alloc]initWithFrame:CGRectMake(width * 2, 0, width, height)];
    page3View.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:page3View];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - implement UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat width = self.scrollView .frame.size.width;
    NSInteger currentPage = ((self.scrollView .contentOffset.x - width / 2) / width) + 1;
    [self.pageControl setCurrentPage:currentPage];
}

- (IBAction)pageAction:(id)sender {
    [self.scrollView setContentOffset:CGPointMake(self.pageControl.currentPage*CGRectGetWidth(self.view.frame), 0) animated:YES];
}
@end
