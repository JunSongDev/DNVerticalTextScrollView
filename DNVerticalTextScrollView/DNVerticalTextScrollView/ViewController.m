//
//  ViewController.m
//  DNVerticalTextScrollView
//
//  Created by zjs on 2018/9/13.
//  Copyright © 2018年 zjs. All rights reserved.
//

#import "ViewController.h"
#import "DNVerticalTextScrollView/DNVerticalTextScrollView.h"

@interface ViewController ()<DNVerticalTextScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
        
    DNVerticalTextScrollView * scrollView = [[DNVerticalTextScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50);
    scrollView.dataArray = @[@"我是谁",@"我在哪",@"我在干什么"];
    [self.view addSubview:scrollView];
    scrollView.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)dn_textScrollViewSelectedAtIndex:(NSInteger)index content:(NSString *)content {
    
    NSLog(@"%ld---------%@",index,content);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
