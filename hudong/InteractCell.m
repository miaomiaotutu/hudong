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
@interface InteractCell ()
@property (nonatomic,weak) UIImageView *headerPic;
@property (nonatomic,weak) UIImageView *pic1;
@property (nonatomic,weak) UIImageView *pic2;
@property (nonatomic,weak) UIImageView *pic3;
@property (nonatomic,weak) UILabel *content;
@property (nonatomic,weak) UILabel *headerName;
@property (nonatomic,weak) UIButton *address;
@property (nonatomic,weak) UILabel *headerTime;
@property (nonatomic,weak) UILabel *headerDate;
@property (nonatomic,weak) UILabel *hotFlag;
@property (nonatomic,weak) UIButton *comment;
@property (nonatomic,weak) UIButton *praise;

@end
@implementation InteractCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UIImageView *headerPic = [[UIImageView alloc]init];
        [self.contentView addSubview:headerPic];
        self.headerPic = headerPic;
        
        UIImageView *pic1 = [[UIImageView alloc]init];
        [self.contentView addSubview:pic1];
        self.pic1 = pic1;
        
        UIImageView *pic2 = [[UIImageView alloc]init];
        [self.contentView addSubview:pic2];
        self.pic2 = pic2;
        
        UIImageView *pic3 = [[UIImageView alloc]init];
        [self.contentView addSubview:pic3];
        self.pic3 = pic3;
        
        UILabel *headerName = [[UILabel alloc]init];
        headerName.textAlignment = NSTextAlignmentCenter;

        [self.contentView addSubview:headerName];
        self.headerName = headerName;
        
        UILabel *content = [[UILabel alloc]init];
        content.numberOfLines = 0;
        content.font = [UIFont systemFontOfSize:15.f];
        [self.contentView addSubview:content];
        self.content = content;

        
        UIButton *address = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:address];
        self.address = address;
        
        UILabel *headerTime = [[UILabel alloc]init];
        headerTime.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:headerTime];
        self.headerTime = headerTime;
        
        UILabel *headerDate = [[UILabel alloc]init];
        headerDate.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:headerDate];
        self.headerDate = headerDate;
        
        UILabel *hotFlag = [[UILabel alloc]init];
        [self.contentView addSubview:hotFlag];
        self.hotFlag = hotFlag;
        
        UIButton *comment = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:comment];
        self.comment = comment;
        
        UIButton *praise = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:praise];
        self.praise = praise;
    }
    return self;
}

- (void)setDic:(FrameModel *)dic
{
    NSLog(@"setdic");
    _dic = dic;
    _headerPic.image = [UIImage imageNamed:@"互动_发帖头像"];
    _headerName.text = dic.datamodel.headerNameT;
    _headerTime.text = dic.datamodel.headerTimeT;
    _headerDate.text = dic.datamodel.headerDateT;
    _content.text = dic.datamodel.contentT;
    _headerPic.frame = dic.headerPicF;
    _headerName.frame = dic.headerNameF;
    _headerDate.frame = dic.headerDateF;
    _headerTime.frame = dic.headerTimeF;
    _pic1.frame = dic.pic1F;
    _pic2.frame = dic.pic2F;
    _pic3.frame = dic.pic3F;
    _content.frame = dic.contentF;
    _address.frame = dic.addressF;
    _content.text = dic.datamodel.contentT;
    [_address setTitle:dic.datamodel.addressT forState:UIControlStateNormal];
    _hotFlag.text = dic.datamodel.hotTlagT;
    _hotFlag.frame = dic.hotFlagF;
    if (dic.datamodel.picT.count == 3) {
        _pic1.frame = dic.pic1F;

        _pic1.image = [UIImage imageNamed:dic.datamodel.picT[0]];
        _pic2.frame = dic.pic2F;
        _pic2.image = [UIImage imageNamed:dic.datamodel.picT[1]];
        _pic3.frame = dic.pic3F;
        _pic3.image = [UIImage imageNamed:dic.datamodel.picT[2]];
    }
    
    if (dic.datamodel.picT.count == 2) {
        _pic1.frame = dic.pic1F;
        
        _pic1.image = [UIImage imageNamed:dic.datamodel.picT[0]];
        _pic2.frame = dic.pic2F;
        _pic2.image = [UIImage imageNamed:dic.datamodel.picT[1]];
        
    }

    if (dic.datamodel.picT.count == 1) {
        _pic1.frame = dic.pic1F;
        
        _pic1.image = [UIImage imageNamed:dic.datamodel.picT[0]];
    }

    
    //
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
