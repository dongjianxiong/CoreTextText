//
//  CoreTxetView.h
//  CoreTextText
//
//  Created by founderbn on 14-12-14.
//  Copyright (c) 2014年 founderbn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>
#import "ItemModel.h"


@interface CoreTxetView : UIView


@property (nonatomic, assign) CGColorRef bgColorRef;

@property (nonatomic, assign) CGColorRef foreColorRef;

@property (nonatomic, strong) NSMutableAttributedString *mutiAttributedString;

@property (nonatomic, assign) CTFrameRef frameRef;

@property (nonatomic, strong) NSString *originalStr;

@property (nonatomic, strong) ItemModel *itemModel;

+(CoreTxetView *)coreTextViewWithFrame:(CGRect)frame;

- (void)setImage:(UIImage *)image inRect:(CGRect)rect;

//- (void)set

@end
