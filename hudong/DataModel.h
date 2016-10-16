//
//  DataModel.h
//  hudong
//
//  Created by kede on 15/9/20.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface DataModel : NSObject
@property (nonatomic,strong) NSDictionary *datamodel;
@property (nonatomic,copy) NSString *headerPicT;
@property (nonatomic,strong) NSArray *picT;
@property (nonatomic,copy) NSString *contentT;
@property (nonatomic,copy) NSString *headerNameT;
@property (nonatomic,copy) NSString *addressT;
@property (nonatomic,copy) NSString *headerTimeT;
@property (nonatomic,copy) NSString *hotTlagT;
@property (nonatomic,copy) NSString *commentT;
@property (nonatomic,copy) NSString *praiseT;

@end
