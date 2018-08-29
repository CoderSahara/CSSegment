//
//  CSViewController.m
//  CSSegment
//
//  Created by CoderSahara on 08/28/2018.
//  Copyright (c) 2018 CoderSahara. All rights reserved.
//

#import "CSViewController.h"
#import "CSSegmentBarViewController.h"

@interface CSViewController ()

@property (nonatomic, weak) CSSegmentBarViewController *segmentBarVC;

@end

@implementation CSViewController

- (CSSegmentBarViewController *)segmentBarVC {
    if (!_segmentBarVC) {
        CSSegmentBarViewController *vc = [[CSSegmentBarViewController alloc] init];
        [self addChildViewController:vc];
        _segmentBarVC = vc;
    }
    return _segmentBarVC;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    self.segmentBarVC.segmentBar.frame = CGRectMake(0, 0, 300, 35);
    self.segmentBarVC.segmentBar.backgroundColor = [UIColor greenColor];
    self.navigationItem.titleView = self.segmentBarVC.segmentBar;
    
    self.segmentBarVC.view.frame = self.view.bounds;
    [self.view addSubview:self.segmentBarVC.view];
    
    
    NSArray *items = @[@"专辑", @"声音", @"下载中"];
    
    // 添加几个自控制器
    // 在contentView, 展示子控制器的视图内容
    
    UIViewController *vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor redColor];
    
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor yellowColor];
    
    
    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2, vc3]];
    
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSArray *items = @[@"专辑专辑", @"声xxx音", @"下载中xxxx", @"下载中xxxx", @"下载中xxxx"];
        
        // 添加几个自控制器
        // 在contentView, 展示子控制器的视图内容
        
        UIViewController *vc1 = [UIViewController new];
        vc1.view.backgroundColor = [UIColor redColor];
        
        UIViewController *vc2 = [UIViewController new];
        vc2.view.backgroundColor = [UIColor greenColor];
        
        UIViewController *vc3 = [UIViewController new];
        vc3.view.backgroundColor = [UIColor yellowColor];
        
        UIViewController *vc4 = [UIViewController new];
        vc4.view.backgroundColor = [UIColor greenColor];
        
        UIViewController *vc5 = [UIViewController new];
        vc5.view.backgroundColor = [UIColor yellowColor];
        
        
        [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2, vc3, vc4, vc5]];
        
        
        [self.segmentBarVC.segmentBar updateWithConfig:^(CSSegmentBarConfig *config) {
            
            config.segmentBarBackColor = [UIColor cyanColor];
            //            config.itemNormalColor = [UIColor brownColor];
            //            config.itemSelectColor = [UIColor yellowColor];
            config.item_select_color([UIColor brownColor]).item_normal_color([UIColor yellowColor]);
            config.itemFont = [UIFont fontWithName:@"Zapfino" size:10];
            
            config.indicatorHeight = 5;
            config.indicatorColor = [UIColor blueColor];
            config.indicatorExtraW = 0;
            
        }];
        
        
    });
}


@end
