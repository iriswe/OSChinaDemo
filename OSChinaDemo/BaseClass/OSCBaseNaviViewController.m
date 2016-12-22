//
//  OSCBaseNaviViewController.m
//  OSChinaDemo
//
//  Created by ludashen on 2016/12/15.
//  Copyright © 2016年 ludashen. All rights reserved.
//

#import "OSCBaseNaviViewController.h"

@interface OSCBaseNaviViewController ()

@end

@implementation OSCBaseNaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldAutorotate
{
    return [self.visibleViewController shouldAutorotate];
}

- (BOOL)prefersStatusBarHidden
{
    return [self.visibleViewController preferredInterfaceOrientationForPresentation];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if (![self.visibleViewController isKindOfClass:[UIAlertController class]]) {
        return [self.visibleViewController supportedInterfaceOrientations];
    } else {
        return UIInterfaceOrientationMaskPortrait;
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
