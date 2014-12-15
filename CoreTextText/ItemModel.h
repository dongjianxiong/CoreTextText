//
//  ItemModel.h
//  CoreTextText
//
//  Created by founderbn on 14-12-14.
//  Copyright (c) 2014年 founderbn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemModel : NSObject

@property (nonatomic, copy) NSString *itemName;

@property (nonatomic, copy) NSString *itenDescription;

@property (nonatomic, copy) NSString *itemPrice;

@property (nonatomic, copy) NSString *itemScoreNeed;

@property (nonatomic, copy) NSString *itemPublishTime;


@property (nonatomic, strong) NSURL *smallPicUrl;

+(ItemModel *)itemModelWithName:(NSString *)name
                          price:(NSString *)price
                          score:(NSString *)scoreNeed
                    smallPicUrl:(NSString *)urlString;


+(ItemModel *)itemModelWithDict:(NSDictionary *)dict;

@end
