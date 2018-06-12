//
//  ViewController.m
//  Khayra_Test
//
//  Created by Khayra on 2018/5/22.
//  Copyright © 2018年 Khayra. All rights reserved.
//

#import "ViewController.h"
#import "HGBStarViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)textAc:(id)sender {
    HGBStarViewController *vc = [[HGBStarViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)KhayraAc:(id)sender {
    [self.navigationController pushViewController:[[NSClassFromString(@"KhayraVC") alloc]init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
