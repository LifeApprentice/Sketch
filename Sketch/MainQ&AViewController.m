//
//  MainQ&AViewController.m
//  Sketch
//
//  Created by Huang on 16/7/11.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import "MainQ&AViewController.h"

@interface MainQ_AViewController ()

@end

@implementation MainQ_AViewController
@synthesize showTableView,Q_ATableView,switchSegmentedControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //tableview = [[UITableView alloc]initWithFrame:CGRectMake(0,289,600,200) style:UITableViewStylePlain];
    Q_ATableView.dataSource = self;
    Q_ATableView.delegate = self;
    showTableView.dataSource = self;
    showTableView.delegate = self;
    
    [self.view addSubview:Q_ATableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //定义个静态字符串为了防止与其他类的tableivew重复
    static NSString *CellIdentifier =@"Q_Cell";
    //定义cell的复用性当处理大量数据时减少内存开销
    UITableViewCell *cell = [tableView  dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell ==nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:CellIdentifier];
    }
    
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)valueChange:(UISegmentedControl *)sender {
    int Index = (int)switchSegmentedControl.selectedSegmentIndex;
    switch(Index){
        case 0:{
            [self.view addSubview:Q_ATableView];
            break;
        }
        case 1:{
            [self.view addSubview:showTableView];
            break;
        }
        default:
            break;
    }
}
@end
