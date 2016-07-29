//
//  ServeDetailViewController.h
//  Sketch
//
//  Created by Huang on 16/7/26.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ServeDetailViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *tabView;
@property (weak, nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (weak, nonatomic) IBOutlet UIView *mainContentView;
@property (weak, nonatomic) IBOutlet UILabel *servedetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *introduceLabel;

@property (strong, nonatomic) UIScrollView *photoScrollView;
@property (strong, nonatomic) UIPageControl *photoPageControl;


@end
