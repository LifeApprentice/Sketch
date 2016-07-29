//
//  DetailPageViewController.h
//  Sketch
//
//  Created by Huang on 16/7/12.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailPageViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *commentTableView;
//@property(strong,nonatomic)UITableView *tableview;
@end
