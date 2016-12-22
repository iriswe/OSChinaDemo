//
//  UIViewController+Common.h
//  OSChinaDemo
//
//  Created by ludashen on 2016/12/21.
//  Copyright © 2016年 ludashen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSCBaseNaviViewController.h"

@interface UIViewController (Common)

- (OSCBaseNaviViewController *)getNaviController:(UIViewController *)vc;

@end
