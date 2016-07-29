//
//  MainQ&AViewController.h
//  Sketch
//
//  Created by Huang on 16/7/11.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainQ_AViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *switchSegmentedControl;
- (IBAction)valueChange:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UITableView *Q_ATableView;
@property (weak, nonatomic) IBOutlet UITableView *showTableView;
//@property(strong,nonatomic)UITableView *tableview;
@end
