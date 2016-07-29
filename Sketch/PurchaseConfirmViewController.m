//
//  PurchaseConfirmViewController.m
//  Sketch
//
//  Created by Huang on 16/7/27.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import "PurchaseConfirmViewController.h"

@interface PurchaseConfirmViewController ()

@end

@implementation PurchaseConfirmViewController
@synthesize purchaseView,Stepper;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Stepper.value = 0;
    Stepper.stepInterval = 1.0f;
    Stepper.valueChangedCallback = ^(PKYStepper *stepper, float count) {
        stepper.countLabel.text = [NSString stringWithFormat:@"%@", @(count)];
    };
    [Stepper setBorderColor:[UIColor grayColor]];
    [Stepper setButtonTextColor:[UIColor redColor] forState:UIControlStateNormal];
    [Stepper setLabelTextColor:[UIColor grayColor]];
    [Stepper setup];
    
    purchaseView.layer.borderWidth = 1;
    purchaseView.layer.borderColor = [UIColor lightGrayColor].CGColor;

    
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

@end
