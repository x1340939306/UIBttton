//
//  ViewController.m
//  UIButton
//
//  Created by 徐强(xuqiangjob@163.com  QQ:841889951) on 2018/1/23.
//  Copyright © 2018年 徐强. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Add.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 50, 200, 50);
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"gray_right_arrow"] forState:UIControlStateNormal];
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:btn];
    
    [btn layoutButtonWithEdgeInsetsStyle:UIButtonEdgeInsetsStyleRight imageTitleSpace:5 offset:10];
    
    btn.layer.borderColor = [UIColor redColor].CGColor;
    btn.layer.borderWidth = 1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
