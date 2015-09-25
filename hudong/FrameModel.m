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
#define picWidth ([UIScreen mainScreen].bounds.size.width-10*4)/3.0
@implementation FrameModel
-(void)setDatamodel:(DataModel *)datamodel
{

    _datamodel = datamodel;
    
    _headerPicF = CGRectMake(Spacing, Spacing, 40, 40);
    CGFloat headernameW = [datamodel.headerNameT sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13.f]}].width;
    
    _headerNameF = (CGRect){{CGRectGetMidX(_headerPicF)+20+Spacing,CGRectGetMidY(_headerPicF)-10},{headernameW,20}};
    _addressF = (CGRect){{CGRectGetMidX(_headerNameF)+headernameW/2,CGRectGetMidY(_headerPicF)-10},{70,20}};

    CGFloat contentX = Spacing;
    CGFloat contentY = CGRectGetMaxY(_headerPicF)+Spacing;

    CGFloat contentW = SCREEN_Width-2*Spacing;
    CGFloat contentH = [datamodel.contentT boundingRectWithSize:CGSizeMake(contentW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.f]} context:nil].size.height;
    _contentF = CGRectMake(contentX, contentY, contentW, contentH);
    
    if (datamodel.picT.count == 0) {
        _photosviewF = CGRectMake(Spacing, CGRectGetMaxY(_contentF) +Spacing, 0, 0);

    }else{
    int column = (datamodel.picT.count == 4 ? 2 : 3);
    int row = ((int)datamodel.picT.count - 1)/column + 1;
    _photosviewF = CGRectMake(Spacing, CGRectGetMaxY(_contentF) +Spacing, column *picWidth+(column -1)*Spacing, row*picWidth+(row -1)*Spacing);
    }
    _headerTimeF = CGRectMake(Spacing, CGRectGetMaxY(_photosviewF)+Spacing, 110, 20);
    
    _commentF = CGRectMake(SCREEN_Width - Spacing*2 - 70*2, CGRectGetMaxY(_photosviewF)+Spacing, 70, 20);
    _praiseF = CGRectMake(SCREEN_Width - Spacing - 70, CGRectGetMaxY(_photosviewF)+Spacing, 70, 20);
    _cellheight = CGRectGetMaxY(_headerTimeF)+Spacing;
}
@end
