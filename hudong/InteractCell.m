//
//  InteractCell.m
//  hudong
//
//  Created by kede on 15/9/20.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import "InteractCell.h"
#import "DataModel.h"
#import "FrameModel.h"
#import "MJLPhotoView.h"
#import <UIImageView+WebCache.h>
@interface InteractCell ()
@property (nonatomic,weak) UIImageView *headerPic;
@property (nonatomic,weak) MJLPhotoView *photos;
@property (nonatomic,weak) UILabel *content;
@property (nonatomic,weak) UILabel *headerName;
@property (nonatomic,weak) UIButton *address;
@property (nonatomic,weak) UILabel *headerTime;
@property (nonatomic,weak) UILabel *hotFlag;
@property (nonatomic,weak) UIButton *comment;
@property (nonatomic,weak) UIButton *praise;

@end
@implementation InteractCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UIImageView *headerPic = [[UIImageView alloc]init];
        headerPic.contentMode = UIViewContentModeCenter;
        headerPic.layer.masksToBounds = YES;
        headerPic.layer.cornerRadius = 20.0;
        [self.contentView addSubview:headerPic];
        self.headerPic = headerPic;
        
        
        MJLPhotoView *pic3 = [[MJLPhotoView alloc]init];
        [self.contentView addSubview:pic3];
        self.photos = pic3;
        
        UILabel *headerName = [[UILabel alloc]init];
        headerName.font = [UIFont systemFontOfSize:13.f];
        [self.contentView addSubview:headerName];
        self.headerName = headerName;
        
        UILabel *content = [[UILabel alloc]init];
        content.numberOfLines = 0;
        content.font = [UIFont systemFontOfSize:15.f];
        [self.contentView addSubview:content];
        self.content = content;

        
        UIButton *address = [UIButton buttonWithType:UIButtonTypeCustom];
        [address setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [address setImage:[UIImage imageNamed:@"互动_定位"] forState:UIControlStateNormal];
        address.contentMode = UIViewContentModeScaleAspectFit;
        address.titleLabel.font = [UIFont systemFontOfSize:12.f];
        [self.contentView addSubview:address];
        self.address = address;
        
        UILabel *headerTime = [[UILabel alloc]init];
        headerTime.font = [UIFont systemFontOfSize:12.f];
        headerTime.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:headerTime];
        self.headerTime = headerTime;
        
        UILabel *hotFlag = [[UILabel alloc]init];
        [self.contentView addSubview:hotFlag];
        self.hotFlag = hotFlag;
        
        UIButton *comment = [UIButton buttonWithType:UIButtonTypeCustom];
        [comment setImage:[UIImage imageNamed:@"互动_回复  副本"] forState:UIControlStateNormal];
        [comment setImage:[UIImage imageNamed:@"互动_回复 "] forState:UIControlStateSelected];
        [comment setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        comment.titleLabel.font = [UIFont systemFontOfSize:12.f];
        [self.contentView addSubview:comment];
        self.comment = comment;
        
        UIButton *praise = [UIButton buttonWithType:UIButtonTypeCustom];
        [praise setImage:[UIImage imageNamed:@"互动_点赞"] forState:UIControlStateSelected];
        [praise setImage:[UIImage imageNamed:@"互动_点赞 副本"] forState:UIControlStateNormal];
        [praise setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        praise.titleLabel.font = [UIFont systemFontOfSize:12.f];

        [self.contentView addSubview:praise];
        self.praise = praise;
    }
    return self;
}

- (void)setDic:(FrameModel *)dic
{
    _dic = dic;
    _headerPic.image = [UIImage imageNamed:@"互动_发帖头像"];
    _headerName.text = dic.datamodel.headerNameT;
    _headerTime.text = dic.datamodel.headerTimeT;
    _content.text = dic.datamodel.contentT;
    _headerPic.frame = dic.headerPicF;
    _headerName.frame = dic.headerNameF;
    _headerTime.frame = dic.headerTimeF;
    _content.frame = dic.contentF;
    _address.frame = dic.addressF;
    _content.text = dic.datamodel.contentT;
    [_address setTitle:dic.datamodel.addressT forState:UIControlStateNormal];
    _address.frame = dic.addressF;
    _photos.frame = dic.photosviewF;
    _photos.pictures = dic.datamodel.picT;
    _comment.frame = dic.commentF;
    [_comment setTitle:dic.datamodel.commentT forState:UIControlStateNormal];
    _praise.frame = dic.praiseF;
    [_praise setTitle:dic.datamodel.praiseT forState:UIControlStateNormal];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
