# UIAlertView-SBNCBlockConfig
用更简洁的方式调用 UIAlertView，支持多个按钮，action 用 block 配置。

示例代码：
```
    SBNCAlertViewItem *confirmItem = [[SBNCAlertViewItem alloc] initWithTitle:@"知道了" action:^{
        NSLog(@"确定");
    } isCancelItem:NO];
    SBNCAlertViewItem *cancelItem = [[SBNCAlertViewItem alloc] initWithTitle:@"退下" action:^{
        NSLog(@"滚");
    } isCancelItem:YES];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"有件事" message:@"你好吗" items:@[confirmItem, cancelItem]];
    [alertView show];
```
