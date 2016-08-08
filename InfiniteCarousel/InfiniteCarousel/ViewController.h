//
//  ViewController.h
//  InfiniteCarousel
//
//  Created by esobi on 2016/8/8.
//  Copyright © 2016年 aiur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@end

