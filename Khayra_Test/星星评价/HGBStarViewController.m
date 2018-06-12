//
//  HGBStarViewController.m
//  MyApp_HGB
//
//  Created by huangguangbao on 2017/10/24.
//  Copyright © 2017年 agree.com.cn. All rights reserved.
//

#import "HGBStarViewController.h"
#import "HGBStarRateView.h"
#define kWidth [[UIScreen mainScreen] bounds].size.width
#define kHeight [[UIScreen mainScreen] bounds].size.height
@interface HGBStarViewController ()<HGBStarRateViewDelegate>

@end

@implementation HGBStarViewController
#pragma mark life
- (void)viewDidLoad {
    [super viewDidLoad];
    [self createNavigationItem];//导航栏
    [self viewSetUp];//UI



}
#pragma mark 导航栏
//导航栏
-(void)createNavigationItem
{
    //导航栏
    self.navigationController.navigationBar.barTintColor=[UIColor colorWithRed:0.0/256 green:191.0/256 blue:256.0/256 alpha:1];
    [[UINavigationBar appearance]setBarTintColor:[UIColor colorWithRed:0.0/256 green:191.0/256 blue:256.0/256 alpha:1]];
    //标题
    UILabel *titleLab=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 136*kWidth, 16)];
    titleLab.font=[UIFont boldSystemFontOfSize:16];
    titleLab.text=@"星星评价";
    titleLab.textAlignment=NSTextAlignmentCenter;
    titleLab.textColor=[UIColor whiteColor];
    self.navigationItem.titleView=titleLab;


    //左键
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"返回"  style:UIBarButtonItemStylePlain target:self action:@selector(returnhandler)];
    [self.navigationItem.leftBarButtonItem setImageInsets:UIEdgeInsetsMake(0, -15, 0, 5)];
    [self.navigationItem.leftBarButtonItem setTintColor:[UIColor whiteColor]];

}
//返回
-(void)returnhandler{
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark view
-(void)viewSetUp{
    self.view.backgroundColor=[UIColor whiteColor];
//    HGBStarRateView *star1=[[HGBStarRateView alloc]initWithFrame:CGRectMake(10, 100, 87, 17) numberOfStars:5];
//    star1.delegate=self;
//    star1.scorePercent= 3.5/5.0;
//    star1.allowScrapStar=YES;
//    [self.view addSubview:star1];

    HGBStarRateView *star2=[[HGBStarRateView alloc]initWithFrame:CGRectMake(10, 200, 200, 30) numberOfStars:5];
    star2.delegate=self;
    star2.normalStarImage = [UIImage imageNamed:@"icon_stars_small_gray"];
    star2.selectStarImage = [UIImage imageNamed:@"icon_stars_small"];
    star2.scorePercent=2.0/5.0;
    star2.allowScrapStar=YES;
    [self.view addSubview:star2];

//    HGBStarRateView *star3=[[HGBStarRateView alloc]initWithFrame:CGRectMake(10, 300, 200, 30) numberOfStars:5];
//    star3.delegate=self;
//    star3.scorePercent=1.0/5.0;
//    star3.allowScrapStar=YES;
//    [self.view addSubview:star3];
}
-(void)starRateView:(HGBStarRateView *)starRateView scroePercentDidChange:(CGFloat)newScorePercent{
    NSLog(@"newScorePercent:%f",newScorePercent);
}
@end
