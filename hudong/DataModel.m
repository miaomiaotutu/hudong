//
//  DataModel.m
//  hudong
//
//  Created by kede on 15/9/20.
//  Copyright © 2015年 miaojinliang. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
- (void)setDatamodel:(NSDictionary *)datamodel
{
    self.headerNameT = datamodel[@"headerNameT"];
    self.headerDateT = datamodel[@"headerDateT"];
    self.headerTimeT = datamodel[@"headerTimeT"];
    self.addressT = datamodel[@"addressT"];
    self.contentT = datamodel[@"contentT"];
    self.hotTlagT = datamodel[@"hotTlagT"];
    self.picT = datamodel[@"picT"];

}
@end
