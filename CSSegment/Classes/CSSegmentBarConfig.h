//
//  CSSegmentBarConfig.h
//  CSSegment_Example
//
//  Created by Sahara on 2018/8/29.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSSegmentBarConfig : NSObject

+ (instancetype)defaultConfig;


/** 背景颜色 */
@property (nonatomic, strong) UIColor *segmentBarBackColor;

@property (nonatomic, strong) UIColor *itemNormalColor;
@property (nonatomic, strong) UIColor *itemSelectColor;
@property (nonatomic, strong) UIFont  *itemFont;

@property (nonatomic, strong) UIColor *indicatorColor;

@property (nonatomic, assign) CGFloat indicatorHeight;
@property (nonatomic, assign) CGFloat indicatorExtraW;

// 链式编程写法
@property (nonatomic, copy, readonly) CSSegmentBarConfig *(^segmentBar_back_color)(UIColor *color);
@property (nonatomic, copy, readonly) CSSegmentBarConfig *(^item_normal_color)(UIColor *color);
@property (nonatomic, copy, readonly) CSSegmentBarConfig *(^item_select_color)(UIColor *color);
@property (nonatomic, copy, readonly) CSSegmentBarConfig *(^item_font)(UIFont *font);
@property (nonatomic, copy, readonly) CSSegmentBarConfig *(^indicator_color)(UIColor *color);
@property (nonatomic, copy, readonly) CSSegmentBarConfig *(^indicator_height)(CGFloat height);
@property (nonatomic, copy, readonly) CSSegmentBarConfig *(^indicator_extraw)(CGFloat extraw);

@end
