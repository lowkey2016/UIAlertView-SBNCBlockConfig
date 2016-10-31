//
//  ViewController.m
//  SBNCAlertView
//
//  Created by Jymn_Chen on 2016/10/31.
//  Copyright © 2016年 com.jymnchen. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+SBNCBlockConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SBNCAlertViewItem *confirmItem = [[SBNCAlertViewItem alloc] initWithTitle:@"知道了" action:^{
        NSLog(@"确定");
    } isCancelItem:NO];
    SBNCAlertViewItem *cancelItem = [[SBNCAlertViewItem alloc] initWithTitle:@"退下" action:^{
        NSLog(@"滚");
    } isCancelItem:YES];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"有件事" message:@"你好吗" items:@[confirmItem, cancelItem]];
    [alertView show];
}

@end
