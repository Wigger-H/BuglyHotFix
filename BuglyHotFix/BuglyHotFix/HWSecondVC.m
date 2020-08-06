//
//  HWSecondVC.m
//  BuglyHotFix
//
//  Created by huangwei on 2020/7/10.
//  Copyright © 2020 huangwei. All rights reserved.
//

#import "HWSecondVC.h"
typedef void(^ocBlock) (NSString *);
@interface HWSecondVC ()

@end

@implementation HWSecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
}
-(void)requestBlock:(void(^)(NSString *content, BOOL success))callback{
    callback(@"这是一个block的返回参数",1);
}
-(ocBlock)genBlock{
    ocBlock block = ^(NSString *str){
        NSLog(@"%@",str);
    };
    return block;
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
