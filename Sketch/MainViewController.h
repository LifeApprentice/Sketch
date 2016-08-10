//
//  MainViewController.h
//  Sketch
//
//  Created by Huang on 16/7/11.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *switchSegmentedControl;
- (IBAction)valueChange:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (weak, nonatomic) IBOutlet UIView *mainContentView;

@property (strong, nonatomic) UIView *helpView;
@property (strong, nonatomic) UIView *skillView;
@property (weak, nonatomic) IBOutlet UIButton *interest;
@property (weak, nonatomic) IBOutlet UIButton *sketch;



@end
