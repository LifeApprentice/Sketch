//
//  PurchaseConfirmViewController.h
//  Sketch
//
//  Created by Huang on 16/7/27.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PKYStepper.h"

@interface PurchaseConfirmViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *purchaseView;
@property (weak, nonatomic) IBOutlet PKYStepper *Stepper;

@end
