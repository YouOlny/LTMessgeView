//
//  ViewController.m
//  LTMessageView
//
//  Created by admin on 2018/3/26.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "ViewController.h"
#import "LTMessageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
    [self.view addSubview:btn];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"显示信息框" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(showMessage) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showMessage{
    LTMessageView *messageView = [[LTMessageView alloc] initWithTitle:@"这是一个错误的信息" messageType:LTMessageViewTypeError duration:0];
    [messageView show];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
