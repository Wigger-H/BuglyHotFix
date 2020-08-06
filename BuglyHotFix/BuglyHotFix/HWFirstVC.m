//
//  HWFirstVC.m
//  JSPatchTest
//
//  Created by huangwei on 2020/5/29.
//  Copyright © 2020 huangwei. All rights reserved.
//

#import "HWFirstVC.h"

@interface HWFirstVC ()

@end

@implementation HWFirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.frame = CGRectMake(100, 300, 80, 30);
    but.backgroundColor = [UIColor redColor];
    [but addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}
-(void)clickAction{
    NSLog(@"点击了红色按钮");
}

@end
