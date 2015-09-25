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
            data.datamodel = @{@"headerPicT":@"",@"contentT":@"在中美近年来关系微妙、摩擦不断的大背景下，如何增信释疑、聚焦合作已经成为当前中美能否共创未来的关键所在。在这种情况下，拓展中美双方新的合作空间，打破美国排华精英团体在对华政策中的垄断就极为重要，前者是示之以利，后者是晓之以理，唯有如此才能实现与美方有理、有利、有节，斗而不破，在斗",@"headerNameT":@"moumou",@"addressT":@"临沂市",@"headerTimeT":@"2015-09-04 12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"44",@"praiseT":@"12",@"picT":@[@"http://file.ynet.com/2/1509/25/10407729-500.jpg",@"http://g.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451da6709d67ab5fd5266d11632a0.jpg",@"http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513def983c7f3e6d55fbb2fbd965.jpg",@"http://f.hiphotos.baidu.com/image/pic/item/32fa828ba61ea8d398b30a7d950a304e251f5831.jpg",@"http://e.hiphotos.baidu.com/image/pic/item/c83d70cf3bc79f3d8c709a49b8a1cd11728b2931.jpg",@"http://a.hiphotos.baidu.com/image/w%3D230/sign=525711e6a60f4bfb8cd09957334e788f/1e30e924b899a9019c5d254f1f950a7b0208f55b.jpg"]};
        }else if (i == 3) {
            data.datamodel = @{@"headerPicT":@"",@"contentT":@"晓之以理，唯有如此才能实现与美方有理、有利、有节，斗而不破，在斗",@"headerNameT":@"moumoumoumou",@"addressT":@"临沂市",@"headerTimeT":@"2015-09-04 12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"12",@"praiseT":@"44",@"picT":@[@"http://file.ynet.com/2/1509/25/10407729-500.jpg",@"http://g.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451da6709d67ab5fd5266d11632a0.jpg",@"http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513def983c7f3e6d55fbb2fbd965.jpg",@"http://f.hiphotos.baidu.com/image/pic/item/32fa828ba61ea8d398b30a7d950a304e251f5831.jpg",@"http://e.hiphotos.baidu.com/image/pic/item/c83d70cf3bc79f3d8c709a49b8a1cd11728b2931.jpg"]};
        }else if (i == 4) {
            data.datamodel = @{@"headerPicT":@"",@"contentT":@"晓之以理",@"headerNameT":@"moumou",@"addressT":@"临沂市",@"headerTimeT":@"2015-09-04 12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"111",@"praiseT":@"222",@"picT":@[@"http://file.ynet.com/2/1509/25/10407729-500.jpg",@"http://g.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451da6709d67ab5fd5266d11632a0.jpg",@"http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513def983c7f3e6d55fbb2fbd965.jpg"]};

        }else if (i == 5){
             data.datamodel = @{@"headerPicT":@"",@"contentT":@"在中美近年来关系微妙、摩擦不断的大背景下，如何增信释疑、聚焦合作已经成为当前中美能否共创未来的关键所在。在这种情况下，拓展中美双方新的合作空间，打破美国排华精英团体在对华政策中的垄断就极为重要，前者是示之以利，后者是晓之以理，唯有如此才能实现与美方有理、有利、有节，斗而不破，在斗",@"headerNameT":@"umoumoumoumou",@"addressT":@"临沂市",@"headerTimeT":@"2015-09-04 12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"111",@"praiseT":@"333",@"picT":@[@"http://file.ynet.com/2/1509/25/10407729-500.jpg",@"http://g.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451da6709d67ab5fd5266d11632a0.jpg",@"http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513def983c7f3e6d55fbb2fbd965.jpg",@"http://f.hiphotos.baidu.com/image/pic/item/32fa828ba61ea8d398b30a7d950a304e251f5831.jpg"]};
        }else{
            data.datamodel = @{@"headerPicT":@"",@"contentT":@"在中美近年来关系微妙、摩擦不断的大背景下，如何增信释疑、聚焦合作已经成为当前中美能否共创未来的关键所在。在这种情况下，拓展中美双方新的合作空间，打破美国排华精英团体在对华政策中的垄断就极为重要，前者是示之以利，后者是晓之以理，唯有如此才能实现与美方有理、有利、有节，斗而不破，在斗",@"headerNameT":@"umoumoumoumoumoumou",@"addressT":@"临沂市",@"headerTimeT":@"2015-09-04 12:00",@"headerDateT":@"2015-09-06",@"hotTlagT":@"热门贴",@"commentT":@"2222",@"praiseT":@"12",@"picT":@[]};
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
