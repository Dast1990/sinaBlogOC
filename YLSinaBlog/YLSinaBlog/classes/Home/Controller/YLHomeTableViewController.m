//
//  YLHomeTableViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLHomeTableViewController.h"



@interface YLHomeTableViewController ()

@end

@implementation YLHomeTableViewController

- (void)viewDidLoad {
     YLLOG(@"%s",__func__);
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self selector:@selector(leftBtnDidClick) normalImgName:@"navigationbar_friendsearch" highlightedImgName:@"navigationbar_friendsearch_highlighted"];
    
    self.navigationItem.rightBarButtonItem =  [UIBarButtonItem itemWithTarget:self selector:@selector(rightBtnDidClick) normalImgName:@"navigationbar_pop" highlightedImgName:@"navigationbar_pop_highlighted"];
    
//    设置导航栏中心视图
    UIButton *titleViewByBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    titleViewByBtn.width = 250;
    titleViewByBtn.height = 40;
    [titleViewByBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [titleViewByBtn setTitle:@"首页-文字可变" forState:(UIControlStateNormal)];
    [titleViewByBtn setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:(UIControlStateNormal)];
//    titleViewByBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 100);
//    titleViewByBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 150, 0, 0);
    
    self.navigationItem.titleView = titleViewByBtn;
    
    
    
}

- (void)leftBtnDidClick{
    YLLOG(@"%s", __func__);
}

- (void)rightBtnDidClick{
    YLLOG(@"%s", __func__);
}



@end