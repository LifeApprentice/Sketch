//
//  PersonalMainPageViewController.m
//  Sketch
//
//  Created by Huang on 16/7/21.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import "PersonalMainPageViewController.h"

@interface PersonalMainPageViewController ()

@end

@implementation PersonalMainPageViewController
@synthesize mainScrollView,photoScrollView,mainContentView,photoPageControl,introduceLabel,remindLabel,chatView;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    photoScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 185)];
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
    
    mainScrollView.panGestureRecognizer.delaysTouchesBegan = YES; //使scrollView上的button不会挡掉滑动手势，但同时导致button没有点击效果
    //mainScrollView.delaysContentTouches = NO;
    mainScrollView.showsVerticalScrollIndicator = NO;//不显示拖动条
    
    /*Lable设置文字过长时的显示格式，并显示为多行*/
    //introduceLable.lineBreakMode = NSLineBreakByWordWrapping;
    introduceLabel.numberOfLines = 0;
    
    /*Lable设置为圆角需要多加一行*/
    remindLabel.numberOfLines = 0;
    //remindLable.layer.cornerRadius = 10;
    remindLabel.clipsToBounds = YES;
    
    
    for (int i=0; i<2; i++) {
        UIButton *serveButton = [[UIButton alloc] initWithFrame:CGRectMake(0.05*[UIScreen mainScreen].bounds.size.width, 523+i*170, 0.9*[UIScreen mainScreen].bounds.size.width, 150)];
        
        serveButton.backgroundColor = [UIColor whiteColor];
        [serveButton setTitle:@"让我告诉你如何画好素描半身像" forState:UIControlStateNormal];
        serveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [serveButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        serveButton.showsTouchWhenHighlighted = YES;//设置点击效果
        
        serveButton.layer.borderWidth = 1;
        serveButton.layer.borderColor = [UIColor grayColor].CGColor;
        serveButton.layer.cornerRadius = 10;
        [mainContentView addSubview:serveButton];
        
        //NSLog(@"%@",NSStringFromCGRect(serveButton.superview.frame));
    }
    
    chatView.layer.borderWidth = 1;
    chatView.layer.borderColor = [UIColor lightGrayColor].CGColor;
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
