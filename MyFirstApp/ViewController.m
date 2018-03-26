//
//  ViewController.m
//  MyFirstApp
//
//  Created by BenJames on 2018-3-26.
//  Copyright © 2018年 FunnyMuse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(strong,nonatomic) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIColor *grey = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1];
    self.view.backgroundColor = grey;
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.2 green:0.72 blue:0.46 alpha:1];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
//    CGRect screenRect = [UIScreen mainScreen].bounds;
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 44)];
    [titleLabel setText:@"标题"];
    [titleLabel setFont:[UIFont boldSystemFontOfSize:17]];
    [titleLabel setTextColor: [UIColor whiteColor]];
    [titleLabel setTextAlignment: NSTextAlignmentCenter];
    [titleLabel setBackgroundColor: [UIColor clearColor]];
    
    //需要设置titleLabel位置
//    [self.navigationController.navigationBar addSubview:titleLabel];
    //不需要设置titleLabel位置
    self.navigationItem.titleView = titleLabel;
    
    
    
    
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 20)];
    [self.button setTitle:@"Do not press" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.button];

    [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];

  
}

-(void)clickMe:(id)sender{
    
    //初始化提示框；
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Waring" message:@"Is that you?" preferredStyle:  UIAlertControllerStyleActionSheet];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //点击按钮的响应事件；
    }]];
    
    //弹出提示框；
    [self presentViewController:alert animated:true completion:nil];
    
    
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
