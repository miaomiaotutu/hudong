//
//  myTableViewController.m
//  hudong
//
//  Created by kede on 15/9/18.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import "myTableViewController.h"
#import "QCSlideSwitchView.h"
#import "InteractCell.h"
#import "FrameModel.h"
#import "DataModel.h"
@interface myTableViewController ()
{
    NSMutableArray *_arr;
}
@end

@implementation myTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arr = [NSMutableArray array];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    for (int i = 0; i < 10; i++) {
        FrameModel *model = [[FrameModel alloc]init];
        DataModel *data = [[DataModel alloc]init];
        if (i == 2) {
            data.datamodel = @{@"headerPicT":@"",@"contentT":@"在中美近年来关系微妙、摩擦不断的大背景下，如何增信释疑、聚焦合作已经成为当前中美能否共创未来的关键所在。在这种情况下，拓展中美双方新的合作空间，打破美国排华精英团体在对华政策中的垄断就极为重要，前者是示之以利，后者是晓之以理，唯有如此才能实现与美方有理、有利、有节，斗而不破，在斗",@"headerNameT":@"moumou",@"addressT":@"临沂市",@"headerTimeT":@"12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"",@"praiseT":@"",@"picT":@[@"互动_发帖头像",@"互动_发帖头像",@"互动_发帖头像"]};
        }else if (i == 3) {
            data.datamodel = @{@"headerPicT":@"",@"contentT":@"晓之以理，唯有如此才能实现与美方有理、有利、有节，斗而不破，在斗",@"headerNameT":@"moumou",@"addressT":@"临沂市",@"headerTimeT":@"12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"",@"praiseT":@"",@"picT":@[@"互动_发帖头像"]};
        }else if (i == 4) {
            data.datamodel = @{@"headerPicT":@"",@"contentT":@"晓之以理",@"headerNameT":@"moumou",@"addressT":@"临沂市",@"headerTimeT":@"12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"",@"praiseT":@"",@"picT":@[@"互动_发帖头像",@"互动_发帖头像"]};

        }else{
             data.datamodel = @{@"headerPicT":@"",@"contentT":@"在中美近年来关系微妙、摩擦不断的大背景下，如何增信释疑、聚焦合作已经成为当前中美能否共创未来的关键所在。在这种情况下，拓展中美双方新的合作空间，打破美国排华精英团体在对华政策中的垄断就极为重要，前者是示之以利，后者是晓之以理，唯有如此才能实现与美方有理、有利、有节，斗而不破，在斗",@"headerNameT":@"moumou",@"addressT":@"临沂市",@"headerTimeT":@"12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"",@"praiseT":@"",@"picT":@[@"互动_发帖头像",@"互动_发帖头像",@"互动_发帖头像"]};
        }
        
        model.datamodel = data;
        [_arr addObject:model];
    }
    
}
/*
 @property (nonatomic,copy) NSString *headerPicT;
 @property (nonatomic,strong) NSArray *picT;
 @property (nonatomic,copy) NSString *contentT;
 @property (nonatomic,copy) NSString *headerNameT;
 @property (nonatomic,copy) NSString *addressT;
 @property (nonatomic,copy) NSString *headerTimeT;
 @property (nonatomic,copy) NSString *headerDateT;
 @property (nonatomic,copy) NSString *hotTlagT;
 @property (nonatomic,copy) NSString *commentT;
 @property (nonatomic,copy) NSString *praiseT;
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *flag = @"topcell";
    InteractCell *cell = [tableView dequeueReusableCellWithIdentifier:flag];
    if (cell == nil) {
        cell = [[InteractCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:flag];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.dic = _arr[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FrameModel *model = _arr[indexPath.row];
    return model.cellheight;
}



@end
