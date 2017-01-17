//
//  ViewController.m
//  RTextField
//
//  Created by roycms on 2017/1/17.
//  Copyright © 2017年 杜耀辉. All rights reserved.
//

#import "ViewController.h"
#import "RTextField.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RTextField *textField = [[RTextField alloc]init];
    textField.backgroundColor = [UIColor blueColor];
    textField.alpha = 0.9;
    textField.maxLength = 3; //限定最大的可输入的长度
    textField.frame =  CGRectMake(10, 100, 300, 40);
    [self.view addSubview:textField];
}

@end
