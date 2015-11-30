//
//  YLDiscoverTableViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLDiscoverTableViewController.h"

@interface YLDiscoverTableViewController ()

@end

@implementation YLDiscoverTableViewController

- (void)viewDidLoad {
     YLLOG(@"%s",__func__);
    [super viewDidLoad];
    
//    添加搜索框
//    效果不好，搜索图标在中间，不好看。那就自定义吧
//    UISearchBar *searchBar = [[UISearchBar alloc] init];
//    self.navigationItem.titleView = searchBar;
    
//    见天色
    UITextField *searchBar = [[UITextField alloc] init];
    searchBar.height = 40;
    searchBar.width = 300;
    searchBar.background = [UIImage imageNamed:@"common_button_white_disable"];
    
    UIImageView *searchImg = [[UIImageView alloc] init];
    searchImg.image = [UIImage imageNamed:@"tabbar_discover"];
    searchImg.height = 40;
    searchImg.width = 40;
    searchImg.contentMode = UIViewContentModeCenter;
    searchImg.backgroundColor = [UIColor lightGrayColor];
    
    searchBar.leftView = searchImg;
    searchBar.leftViewMode = UITextFieldViewModeAlways;
    
    self.navigationItem.titleView = searchBar;
}

@end