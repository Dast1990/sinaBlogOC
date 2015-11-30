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
    searchBar.frame = CGRectMake(0, 0, 100, 10);
    searchBar.background = [UIImage imageNamed:@"common_button_white_disable"];
    searchBar.leftView = searchBar;
    searchBar.leftViewMode = UITextFieldViewModeAlways;
    
    self.navigationItem.titleView = searchBar;
}

@end