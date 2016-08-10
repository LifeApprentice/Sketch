//
//  MainViewController.m
//  Sketch
//
//  Created by Huang on 16/7/11.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize mainScrollView,mainContentView,switchSegmentedControl,helpView,skillView,interest,sketch;

- (void)viewDidLoad {
    [super viewDidLoad];
    mainScrollView.backgroundColor = [UIColor lightGrayColor];
    
    skillView = [[UIView alloc]initWithFrame:CGRectMake(0, 300, mainContentView.frame.size.width,300)];
    skillView.backgroundColor = [UIColor grayColor];
    
    helpView = [[UIView alloc]initWithFrame:CGRectMake(0, 300, mainContentView.frame.size.width, 300)];
    helpView.backgroundColor = [UIColor whiteColor];
    
    [mainContentView addSubview:helpView];
    

    
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

#pragma mark - Action Click

- (IBAction)valueChange:(UISegmentedControl *)sender {
    int Index = (int)switchSegmentedControl.selectedSegmentIndex;
    switch(Index){
        case 0:{
            [mainContentView addSubview:helpView];
            
        }
            break;
        
        case 1:{
            [mainContentView addSubview:skillView];
        }
            break;
        
        default:
            break;
    }
}

/*
- (void)helpViewDidLoad{
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 300, 100, 100)];
    btn.backgroundColor = [UIColor blackColor];
    [self.mainContentView addSubview:btn];
    
}
 */
@end
