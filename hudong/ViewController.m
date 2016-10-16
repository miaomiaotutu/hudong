//
//  ViewController.m
//  hudong
//
//  Created by kede on 15/9/17.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import "ViewController.h"
#import "QCSlideSwitchView.h"
#import "myTableViewController.h"
#define Duration .2f
<<<<<<< HEAD
#define DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#define DEVICE_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate,QCSlideSwitchViewDelegate>
=======
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate,QCSlideSwitchViewDelegate>
//@property (strong, nonatomic) IBOutlet QCSlideSwitchView *slideSwitchView;
>>>>>>> 8e2b53a0ff95135ec441fe7e0e49676efcdaa4b5
@property (strong, nonatomic) QCSlideSwitchView *slideSwitchView;

@property (nonatomic,weak) UIButton *topButton;
@property (nonatomic,strong) UITableView *table;
@property (nonatomic,strong) UITableView *table1;

@property (nonatomic,strong) NSArray *titlesArr;
@property (nonatomic,strong) UIScrollView *scrollview;
@property (nonatomic,strong) myTableViewController *tablevc;
@property (nonatomic,strong) NSMutableArray *controllers;

@end

@implementation ViewController
- (UIScrollView *)scrollview
{
    if (_scrollview == nil) {
        _scrollview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, 300, 30)];
        _scrollview.delegate = self;
        _scrollview.showsHorizontalScrollIndicator = NO;
        _scrollview.backgroundColor = [UIColor redColor];
        [self.view addSubview:_scrollview];
    }
    return _scrollview;
}
- (UITableView *)table
{
    if (_table == nil) {
        _table = [[UITableView alloc]initWithFrame:CGRectMake(100, 64, 120, 0) style:UITableViewStylePlain];

        _table.delegate = self;
        _table.dataSource = self;
        [self.view addSubview:_table];
    }
    return _table;
}

//- (UITableView *)table1
//{
//    if (_table == nil) {
//        _table = [[UITableView alloc]initWithFrame:CGRectMake(0, 94, 320, 568-94) style:UITableViewStylePlain];
//        
//        _table.delegate = self;
//        _table.dataSource = self;
//        [self.view addSubview:_table];
//    }
//    return _table;
//}


- (void)setupUIButtons
{
<<<<<<< HEAD
    
=======
>>>>>>> 8e2b53a0ff95135ec441fe7e0e49676efcdaa4b5
    NSArray *arr = @[@"推荐",@"活动专区",@"趣味杂谈",@"情感",@"财经",@"体育"];
    for (int i = 0; i < arr.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:arr[i] forState:UIControlStateNormal];
        btn.frame = CGRectMake(i*80, 0, 80, 30);
        btn.tag = i;
        [self.scrollview addSubview:btn];
    }
    self.scrollview.contentSize = CGSizeMake(arr.count*80, 30);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.controllers = [NSMutableArray array];
    self.titlesArr = @[@"互动",@"热门动态",@"互动游戏",@"我的发布",@"消息通知"];
    UIButton *topbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    topbtn.frame = CGRectMake(0, 0, 80, 30);
    [topbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [topbtn addTarget:self action:@selector(changeTop:) forControlEvents:UIControlEventTouchUpInside];
    [topbtn  setTitle:@"喵喵" forState:UIControlStateNormal];
    self.navigationItem.titleView = topbtn;
    
    self.topButton = topbtn;
    //[self setupUIButtons];
//    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changedirection:)];
//    swipe.direction = UISwipeGestureRecognizerDirectionRight ;
//    [self.table1 addGestureRecognizer:swipe];
//    UISwipeGestureRecognizer *swipe1 = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changedirection:)];
//    swipe1.direction = UISwipeGestureRecognizerDirectionLeft ;
//    [self.table1 addGestureRecognizer:swipe1];
    
<<<<<<< HEAD
    self.slideSwitchView = [[QCSlideSwitchView alloc]initWithFrame:CGRectMake(0, 64, DEVICE_WIDTH, DEVICE_HEIGHT-64)];
=======
    self.slideSwitchView = [[QCSlideSwitchView alloc]initWithFrame:CGRectMake(0, 64, 320, 568)];
//    self.slideSwitchView.slideSwitchViewDelegate=self;
    //self.slideSwitchView.frame = CGRectMake(0, 64, 320, 400);
>>>>>>> 8e2b53a0ff95135ec441fe7e0e49676efcdaa4b5
    [self.view addSubview:self.slideSwitchView];
    
    self.slideSwitchView.tabItemNormalColor = [QCSlideSwitchView colorFromHexRGB:@"868686"];
    self.slideSwitchView.tabItemSelectedColor = [QCSlideSwitchView colorFromHexRGB:@"bb0b15"];
    self.slideSwitchView.shadowImage = [[UIImage imageNamed:@"red_line_and_shadow.png"]
                                        stretchableImageWithLeftCapWidth:100.0f topCapHeight:0.0f];
    self.slideSwitchView.slideSwitchViewDelegate = self;
    for (int i = 0; i < 5; i++) {
        myTableViewController *tab = [[myTableViewController alloc]init];
        tab.title = self.titlesArr[i];
        [self.controllers addObject:tab];
   }
    
    [self.slideSwitchView buildUI];

}

- (void)changedirection:(UISwipeGestureRecognizer *)swipe
{
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        [self.scrollview setContentOffset:CGPointMake(160, 0)];
        UIButton *btn = (UIButton *)[self.scrollview viewWithTag:2];
        [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
        NSLog(@"UISwipeGestureRecognizerDirectionRight");
    }
    
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        [self.scrollview setContentOffset:CGPointMake(240, 0)];
        UIButton *btn = (UIButton *)[self.scrollview viewWithTag:3];
        [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
        NSLog(@"left");
    }
}
- (void)changeTop:(UIButton *)btn
{
//    btn.selected = !btn.selected;
//    if (btn.selected) {
//        [UIView animateWithDuration:Duration animations:^{
//            self.table.frame = CGRectMake(100, 64, 120, 200);
//            
//            
//        }];
//    }else{
//        [UIView animateWithDuration:Duration animations:^{
//            self.table.frame = CGRectMake(100, 64, 120, 0);
//            
//            
//        }];
//
//    }
    [self.navigationController pushViewController:self.tablevc animated:YES];
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *flag = @"topcell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:flag];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:flag];
        cell.backgroundColor = [UIColor redColor];
    }
    cell.textLabel.text = self.titlesArr[indexPath.row];
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [self.topButton setTitle:self.titlesArr[indexPath.row] forState:UIControlStateNormal];
//    [UIView animateWithDuration:Duration animations:^{
//        self.table.frame = CGRectMake(100, 64, 120, 0);
//        
//        
//    }];
//    self.topButton.selected = NO;
//}


- (NSUInteger)numberOfTab:(QCSlideSwitchView *)view
{
    // you can set the best you can do it ;
    return self.controllers.count;
}

- (UIViewController *)slideSwitchView:(QCSlideSwitchView *)view viewOfTab:(NSUInteger)number
{
    return self.controllers[number];
}

- (void)slideSwitchView:(QCSlideSwitchView *)view didselectTab:(NSUInteger)number
{
    myTableViewController *vc = nil;
    vc=self.controllers[number];
}
<<<<<<< HEAD
=======


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

>>>>>>> 8e2b53a0ff95135ec441fe7e0e49676efcdaa4b5
@end
