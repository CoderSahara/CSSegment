//
//  CSSegmentBarConfig.m
//  CSSegment_Example
//
//  Created by Sahara on 2018/8/29.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import "CSSegmentBarConfig.h"

@implementation CSSegmentBarConfig

+ (instancetype)defaultConfig {
    
    CSSegmentBarConfig *config = [[CSSegmentBarConfig alloc] init];
    config.segmentBarBackColor = [UIColor clearColor];
    config.itemNormalColor     = [UIColor lightGrayColor];
    config.itemSelectColor     = [UIColor redColor];
    
    config.indicatorColor      = [UIColor redColor];
    config.indicatorHeight     = 2.f;
    config.indicatorExtraW     = 10.f;
    
    return config;
}

- (CSSegmentBarConfig *(^)(UIColor *))segmentBar_back_color {
    
    return ^(UIColor *color) {
        self.segmentBarBackColor = color;
        return self;
    };
}

- (CSSegmentBarConfig *(^)(UIColor *))item_normal_color {
    
    return ^(UIColor *color) {
        self.itemNormalColor = color;
        return self;
    };
}

- (CSSegmentBarConfig *(^)(UIColor *))item_select_color {
    
    return ^(UIColor *color) {
        self.itemSelectColor = color;
        return self;
    };
}

- (CSSegmentBarConfig *(^)(UIFont *))item_font {
    
    return ^(UIFont *font) {
        self.itemFont = font;
        return self;
    };
}


- (CSSegmentBarConfig *(^)(UIColor *))indicator_color {
    
    return ^(UIColor *color) {
        self.indicatorColor = color;
        return self;
    };
}

- (CSSegmentBarConfig *(^)(CGFloat))indicator_height {
    
    return ^(CGFloat height) {
        self.indicatorHeight = height;
        return self;
    };
}

- (CSSegmentBarConfig *(^)(CGFloat))indicator_extraw {
    
    return ^(CGFloat extraw) {
        self.indicator_extraw(extraw);
        return self;
    };
}

@end
