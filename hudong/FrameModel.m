//
//  FrameModel.m
//  hudong
//
//  Created by kede on 15/9/20.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import "FrameModel.h"
#import "DataModel.h"
#define Spacing 10
#define SCREEN_Height [UIScreen mainScreen].bounds.size.height
#define SCREEN_Width  [UIScreen mainScreen].bounds.size.width

@implementation FrameModel
-(void)setDatamodel:(DataModel *)datamodel
{

    _datamodel = datamodel;
    
    _headerPicF = CGRectMake(Spacing, Spacing, 70, 70);
    _headerNameF = CGRectMake(Spacing, CGRectGetMaxY(_headerPicF)+Spacing, 70, 20);
    _addressF = CGRectMake(Spacing, CGRectGetMaxY(_headerNameF), 70, 20);
    _headerTimeF = CGRectMake(Spacing, CGRectGetMaxY(_addressF), 70, 20);
    _headerDateF = CGRectMake(Spacing, CGRectGetMaxY(_headerTimeF), 70, 20);

    CGFloat contentX = CGRectGetMaxX(_headerPicF)+Spacing;

    CGFloat contentW = SCREEN_Width-CGRectGetMaxX(_headerPicF)-20;
    CGFloat contentH = [datamodel.contentT boundingRectWithSize:CGSizeMake(contentW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.f]} context:nil].size.height;
    _contentF = CGRectMake(contentX, Spacing, contentW, contentH);
    
    if (datamodel.picT.count == 0) {
        _pic1F = CGRectMake(contentX, CGRectGetMaxY(_contentF)+Spacing, 0, 0);
        _pic2F = _pic1F;
        _pic3F = _pic1F;
    }
    if (datamodel.picT.count == 1) {
        _pic1F = CGRectMake(contentX, CGRectGetMaxY(_contentF)+Spacing, contentW-50, 150);
    }
    if (datamodel.picT.count == 2) {
        CGFloat picW = (contentW-10)/3.0;
        CGFloat picY = CGRectGetMaxY(_contentF)+Spacing;
        _pic1F = CGRectMake(contentX, picY, picW, picW);
        _pic2F = CGRectMake(CGRectGetMaxX(_pic1F)+5, picY, picW, picW);
    }
    if (datamodel.picT.count == 3) {
        CGFloat picW = (contentW-10)/3.0;
        CGFloat picY = CGRectGetMaxY(_contentF)+Spacing;
        _pic1F = CGRectMake(contentX, picY, picW, picW);
        _pic2F = CGRectMake(CGRectGetMaxX(_pic1F)+5, picY, picW, picW);
        _pic3F = CGRectMake(CGRectGetMaxX(_pic2F)+5, picY, picW, picW);

    }
    
    CGFloat hotY = (CGRectGetMaxY(_pic1F)>CGRectGetMaxY(_headerDateF))?(CGRectGetMaxY(_pic1F)+10):(CGRectGetMaxY(_headerDateF)+10);
    _hotFlagF = CGRectMake(contentX, hotY, 70, 30);
    
    _cellheight = CGRectGetMaxY(_hotFlagF)+5;
}
@end
