//
//  KhayraVC.m
//  Khayra_Test
//
//  Created by khayra on 2018/6/12.
//  Copyright © 2018年 Khayra. All rights reserved.
//

#import "KhayraVC.h"
#import <Masonry/Masonry.h>
#import <ZJKitTool/ZJHelperKit.h>
@interface KhayraVC ()

@end

@implementation KhayraVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Khayra";
    [self daojishi];
}

- (void)daojishi {
    UILabel *lb = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, 300, 50)];
    lb.backgroundColor = [UIColor blueColor];
    lb.textColor = [UIColor whiteColor];
    lb.textAlignment = NSTextAlignmentCenter;
    lb.font = [UIFont systemFontOfSize:20.0];
    ZJTimeCountDown *down = [[ZJTimeCountDown alloc]init];
    [down zj_timeCountDownWithSecondTime:600 completeBlock:^(NSInteger day, NSInteger hour, NSInteger minute, NSInteger second) {
        lb.text = [NSString stringWithFormat:@"day:%ld天 h:%ld时 m:%ld分 s:%ld秒", day,hour,minute,second];
    }];
    [self.view addSubview:lb];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
