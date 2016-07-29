//
//  MainSkillViewController.h
//  Sketch
//
//  Created by Huang on 16/7/11.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainSkillViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *showTableView;
//@property(strong,nonatomic)UITableView *tableview;
@end
