//
//  CSSegmentBar.h
//  CSSegment_Example
//
//  Created by Sahara on 2018/8/29.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSSegmentBarConfig.h"

@class CSSegmentBar;
@protocol CSSegmentBarDelegate <NSObject>

/**
 代理方法, 告诉外界, 内部的点击数据

 @param segmentBar  segmentBar
 @param toIndex     选中的索引
 @param fromIndex   上一个索引
 */
- (void)segmentBar: (CSSegmentBar *)segmentBar didSelectedIndex: (NSInteger)toIndex fromIndex: (NSInteger)fromIndex;

@end


@interface CSSegmentBar : UIView

/**
 快速创建一个选项卡控件
 
 @param frame frame
 
 @return 选项卡控件
 */
+ (instancetype)segmentBarWithFrame: (CGRect)frame;
/** 代理 */
@property (nonatomic, weak)   id<CSSegmentBarDelegate> delegate;
/** 数据源 */
@property (nonatomic, strong) NSArray <NSString *>*items;
/** 当前选中的索引, 双向设置 */
@property (nonatomic, assign) NSInteger selectIndex;

- (void)updateWithConfig: (void(^)(CSSegmentBarConfig *config))configBlock;

@end
