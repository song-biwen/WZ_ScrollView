//
//  WZMainController.m
//  ScrollViewDemo
//
//  Created by songbiwen on 2016/12/22.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import "WZMainController.h"

@interface WZMainController ()
<UIScrollViewDelegate>
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation WZMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    //添加图片
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image1"]];
    [scrollView addSubview:imageView];
    self.imageView = imageView;
    
    //设置代理
    scrollView.delegate = self;
    
    //设置缩放比例
    scrollView.maximumZoomScale = 3.0;
    scrollView.minimumZoomScale = 0.2;
    
}

#pragma mark - UIScrollViewDelegate

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}

@end
