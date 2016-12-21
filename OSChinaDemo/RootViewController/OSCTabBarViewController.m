//
//  OSCTabBarViewController.m
//  OSChinaDemo
//
//  Created by ludashen on 2016/12/21.
//  Copyright © 2016年 ludashen. All rights reserved.
//

#import "OSCTabBarViewController.h"
#import "OSCCombineViewController.h"
#import "OSCActivityViewController.h"
#import "OSCPblishViewController.h"
#import "OSCDiscoverViewController.h"
#import "OSCAboutMeViewController.h"
#import "OSCBaseNaviViewController.h"
#import <RDVTabBarItem.h>
#import "UIViewController+Common.h"

@interface OSCTabBarViewController () <RDVTabBarControllerDelegate>

@end

@implementation OSCTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTabBarViewControllers];
    
}

- (void)setTabBarViewControllers
{
    self.viewControllers = @[[self getNaviController:[[OSCCombineViewController alloc] init]],
                             [self getNaviController:[[OSCActivityViewController alloc] init]],
                             [self getNaviController:[[OSCPblishViewController alloc] init]],
                             [self getNaviController:[[OSCDiscoverViewController alloc] init]],
                             [self getNaviController:[[OSCAboutMeViewController alloc] init]],
                             ];
    
    NSArray *itemImages = @[@"tabbar-news", @"tabbar-tweet", @"ic_nav_add", @"tabbar-discover", @"tabbar-me"];
    NSArray *itemSelectedImages = @[@"tabbar-news-selected", @"tabbar-tweet-selected", @"ic_nav_add_actived", @"tabbar-discover-selected", @"tabbar-me-selected"];
    NSArray *itemTitles = @[@"综合", @"动弹", @"", @"发现", @"我的"];
    NSInteger index = 0;
    
    for (RDVTabBarItem *item in [[self tabBar] items]) {
  
        item.titlePositionAdjustment = UIOffsetMake(0, 3);
        [item setFinishedSelectedImage:[UIImage imageNamed: [itemSelectedImages objectAtIndex:index]] withFinishedUnselectedImage:[UIImage imageNamed:[itemImages objectAtIndex:index]]];
        [item setTitle:[itemTitles objectAtIndex:index]];
//        if (index == 2) {
//            item.itemHeight = 55;//设置凸起的按钮
//        }
        index ++;
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
