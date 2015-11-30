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
    
//    test搜索框
    YLSearchBar *searchBar = [YLSearchBar searchBar];
    searchBar.x = 30;
    searchBar.y = 100;
    searchBar.width = 200;
    searchBar.height = 50;
    [self.view addSubview:searchBar];
}

- (void)leftBtnDidClick{
    YLLOG(@"%s", __func__);
}

- (void)rightBtnDidClick{
    YLLOG(@"%s", __func__);
}



@end