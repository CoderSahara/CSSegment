//
//  CSSegmentBarViewController.h
//  CSSegment_Example
//
//  Created by Sahara on 2018/8/29.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSSegmentBar.h"
@interface CSSegmentBarViewController : UIViewController

@property (nonatomic, weak) CSSegmentBar *segmentBar;

- (void)setUpWithItems: (NSArray <NSString *>*)items childVCs: (NSArray <UIViewController *>*)childVCs;

@end
