//
//  HWMainVC.m
//  JSPatchTest
//
//  Created by huangwei on 2020/5/29.
//  Copyright © 2020 huangwei. All rights reserved.
//

#import "HWMainVC.h"
#import "HWFirstVC.h"
@interface HWMainVC ()

@end

@implementation HWMainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.frame = CGRectMake(150, 100, 200, 30);
    but.backgroundColor = [UIColor whiteColor];
    [but setTitle:@"点我" forState:UIControlStateNormal];
    [but setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but addTarget:self action:@selector(btnClickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
    
    UIButton *butB = [UIButton buttonWithType:UIButtonTypeCustom];
    butB.frame = CGRectMake(150, 200, 200, 30);
    butB.backgroundColor = [UIColor whiteColor];
    [butB setTitle:@"数组越界" forState:UIControlStateNormal];
    [butB setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [butB addTarget:self action:@selector(btnBClickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:butB];
    
    UIButton *butA = [UIButton buttonWithType:UIButtonTypeCustom];
    butA.frame = CGRectMake(150, 300, 200, 30);
    butA.backgroundColor = [UIColor whiteColor];
    [butA setTitle:@"插入Nil" forState:UIControlStateNormal];
    [butA setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [butA addTarget:self action:@selector(btnAClickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:butA];
    
    UIButton *butC = [UIButton buttonWithType:UIButtonTypeCustom];
    butC.frame = CGRectMake(150, 400, 200, 30);
    butC.backgroundColor = [UIColor whiteColor];
    [butC setTitle:@"未实现方法" forState:UIControlStateNormal];
    [butC setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [butC addTarget:self action:@selector(btnCClickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:butC];
}
-(void)btnClickAction{
    NSLog(@"点击了白色按钮");
}
-(void)btnAClickAction{
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:0];
    NSString *str = nil;
    [arr addObject:str];
}
-(void)btnBClickAction{
    NSArray *arr = @[@"1",@"2",@"3"];
    NSString *str = arr[3];
    NSLog(@"+%@",str);
}
+(void)evaluateMinValue{
    int a = 10-5;
    NSLog(@"Min:%d",a);
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    HWFirstVC *vc = [[HWFirstVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
