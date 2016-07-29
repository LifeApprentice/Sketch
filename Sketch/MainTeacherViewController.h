//
//  MainTeacherViewController.h
//  Sketch
//
//  Created by Huang on 16/7/12.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTeacherViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *displayTableView;

@end
