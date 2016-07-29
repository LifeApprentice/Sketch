//
//  ServeDetailViewController.m
//  Sketch
//
//  Created by Huang on 16/7/26.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import "ServeDetailViewController.h"

@interface ServeDetailViewController ()

@end

@implementation ServeDetailViewController
@synthesize tabView,photoScrollView,photoPageControl,mainScrollView,mainContentView,introduceLabel,servedetailLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    photoScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 185)];
    photoScrollView.contentSize = CGSizeMake(3*[UIScreen mainScreen].bounds.size.width, 0);
    photoScrollView.delegate = self;
    photoScrollView.pagingEnabled = YES;//图片之间中间不停顿
    photoScrollView.showsHorizontalScrollIndicator = NO;
    [mainContentView addSubview:photoScrollView];

    for (int i =0; i<3; i++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.frame = CGRectMake(i*photoScrollView.frame.size.width, 0, photoScrollView.frame.size.width, photoScrollView.frame.size.height);
        imageView.image = [UIImage imageNamed:@"01.jpg"];
        [photoScrollView addSubview:imageView];
    }
    
    /*设置页码*/
    photoPageControl = [[UIPageControl alloc]init];
    photoPageControl.center = CGPointMake(0.5*photoScrollView.frame.size.width, 170);
    photoPageControl.numberOfPages = 3;
    
    photoPageControl.enabled = NO;//禁止默认的点击功能
    [mainContentView addSubview:photoPageControl];
    
    mainScrollView.panGestureRecognizer.delaysTouchesBegan = YES;
    mainScrollView.showsVerticalScrollIndicator = NO;
    
    servedetailLabel.numberOfLines = 0;
    introduceLabel.numberOfLines = 0;
    
    
    tabView.layer.borderWidth = 1;
    tabView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/*滚动时切换页码*/
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat page = photoScrollView.contentOffset.x / photoScrollView.frame.size.width;
    photoPageControl.currentPage = (int)(page+0.5); //使显示更平滑
}

@end
