//
//  ItemModel.m
//  CoreTextText
//
//  Created by founderbn on 14-12-14.
//  Copyright (c) 2014年 founderbn. All rights reserved.
//

#import "ItemModel.h"

@implementation ItemModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name
                       price:(NSString *)price
                       score:(NSString *)scoreNeed
                 smallPicUrl:(NSString *)urlString
{
    self = [super init];
    if (self) {
        self.itemName = name;
        self.itemPrice = price;
        self.itemScoreNeed = scoreNeed;
        if ([urlString isKindOfClass:[NSString class]]) {
            self.smallPicUrl = [NSURL URLWithString:urlString];
        }
    }
    return self;
}
+(ItemModel *)itemModelWithName:(NSString *)name
                          price:(NSString *)price
                          score:(NSString *)scoreNeed
                    smallPicUrl:(NSString *)urlString
{

    return [[[self class] alloc] initWithName:name price:price score:scoreNeed smallPicUrl:urlString];
}


+(ItemModel *)itemModelWithDict:(NSDictionary *)dict
{

    ItemModel *itemModel = [[ItemModel alloc]init];
    if (dict) {
        
    }
    return itemModel;
}

@end
