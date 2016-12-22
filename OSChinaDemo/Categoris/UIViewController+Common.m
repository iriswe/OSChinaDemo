//
//  UIViewController+Common.m
//  OSChinaDemo
//
//  Created by ludashen on 2016/12/21.
//  Copyright © 2016年 ludashen. All rights reserved.
//

#import "UIViewController+Common.h"

@implementation UIViewController (Common)
- (OSCBaseNaviViewController *)getNaviController:(UIViewController *)vc
{
    OSCBaseNaviViewController *navi = [[OSCBaseNaviViewController alloc] initWithRootViewController:vc];
    return navi;
}

@end
