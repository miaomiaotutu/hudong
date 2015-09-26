//
//  MJLPhotoView.m
//  hudong
//
//  Created by kede on 15/9/24.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import "MJLPhotoView.h"
#import <MJPhotoBrowser.h>
#import <UIImageView+WebCache.h>
#import <MJPhoto.h>
#define picWidth ([UIScreen mainScreen].bounds.size.width-10*4)/3.0

@implementation MJLPhotoView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self makeview];
//        self.urls = @[@"http://file.ynet.com/2/1509/25/10407729-500.jpg",@"http://g.hiphotos.baidu.com/image/pic/item/1ad5ad6eddc451da6709d67ab5fd5266d11632a0.jpg",@"http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513def983c7f3e6d55fbb2fbd965.jpg",@"http://f.hiphotos.baidu.com/image/pic/item/32fa828ba61ea8d398b30a7d950a304e251f5831.jpg",@"http://a.hiphotos.baidu.com/image/w%3D230/sign=525711e6a60f4bfb8cd09957334e788f/1e30e924b899a9019c5d254f1f950a7b0208f55b.jpg",@"http://e.hiphotos.baidu.com/image/pic/item/c83d70cf3bc79f3d8c709a49b8a1cd11728b2931.jpg"];
    }
    return self;
}

- (void)setPictures:(NSArray *)pictures
{
    _pictures = pictures;
    for (int i = 0; i < self.subviews.count; i++) {
        UIImageView *image = (UIImageView *)self.subviews[i];
        image.userInteractionEnabled = YES;
        if (i < _pictures.count) {
            image.hidden = NO;
        }else{
            image.hidden = YES;
        }
    }
}

- (void)makeview
{
    for (int i = 0; i < 6; i++) {
        UIImageView *imageview = [[UIImageView alloc]init];
//        imageview.contentMode = UIViewContentModeCenter;
//        imageview.clipsToBounds = YES;
        imageview.tag = i;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
        [imageview addGestureRecognizer:tap];

        [self addSubview:imageview];
    }
   // self.backgroundColor = [UIColor redColor];
}

- (void)tap:(UITapGestureRecognizer *)tap
{
    UIImageView *tapView = (UIImageView *)tap.view;
    int i = 0;
    NSMutableArray *arrM = [NSMutableArray array];
    for (NSString *urlStr in _pictures) {
        
        MJPhoto *p = [[MJPhoto alloc] init];
        
        p.url = [NSURL URLWithString:urlStr];
        p.index = i;
        p.srcImageView = tapView;
        [arrM addObject:p];
        i++;
    }
    
    
   
    MJPhotoBrowser *brower = [[MJPhotoBrowser alloc] init];
    brower.photos = arrM;
    brower.currentPhotoIndex = tapView.tag;
    [brower show];

}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat x = 0;
    CGFloat y = 0;
    int col = 0;
    int rol = 0;
    CGFloat margin = 10;

    int cols = _pictures.count==4?2:3;
    // 计算显示出来的imageView
    for (int i = 0; i < _pictures.count; i++) {
        col = i % cols;
        rol = i / cols;
        UIImageView *imageV = self.subviews[i];
        x = col * (picWidth+margin);
        y = rol * (picWidth+margin);
        imageV.frame = CGRectMake(x, y, picWidth, picWidth);
        [imageV sd_setImageWithURL:[NSURL URLWithString:_pictures[i]] placeholderImage:[UIImage imageNamed:@"互动_评论头像"]];
    }
   
    
}

@end
