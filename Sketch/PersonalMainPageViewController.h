//
//  PersonalMainPageViewController.h
//  Sketch
//
//  Created by Huang on 16/7/21.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalMainPageViewController : UIViewController<UIScrollViewDelegate>
//@property(strong,nonatomic)UIScrollView *mainScrollView;
//@property(strong,nonatomic)UIPageControl *mainPageControl;
@property (weak,nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (weak, nonatomic) IBOutlet UIView *mainContentView;

@property (strong,nonatomic) IBOutlet UIScrollView *photoScrollView;

@property (weak, nonatomic) IBOutlet UILabel *introduceLabel;

@property (weak, nonatomic) IBOutlet UILabel *remindLabel;
@property (weak, nonatomic) IBOutlet UIView *chatView;
@property (strong,nonatomic) UIPageControl *photoPageControl;
@end
