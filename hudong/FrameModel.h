//
//  FrameModel.h
//  hudong
//
//  Created by kede on 15/9/20.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class DataModel;
@interface FrameModel : NSObject
@property (nonatomic,strong) DataModel *datamodel;
@property (nonatomic,assign) CGRect headerPicF;
@property (nonatomic,assign) CGRect photosviewF;
@property (nonatomic,assign) CGRect contentF;
@property (nonatomic,assign) CGRect headerNameF;
@property (nonatomic,assign) CGRect addressF;
@property (nonatomic,assign) CGRect headerTimeF;
@property (nonatomic,assign) CGRect hotFlagF;
@property (nonatomic,assign) CGRect commentF;
@property (nonatomic,assign) CGRect praiseF;
@property (nonatomic,assign) CGFloat cellheight;

@end
