//
//  YLNavigationViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//    自定义导航控制器，为了自定义返回和回到首页按钮，以及拦截push方法，隐藏tabbar

#import "YLNavigationViewController.h"

@interface YLNavigationViewController ()

@end

@implementation YLNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    self.hidesBottomBarWhenPushed = YES;
    
}

@end
