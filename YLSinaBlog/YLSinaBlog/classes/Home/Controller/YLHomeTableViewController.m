//
//  YLHomeTableViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLHomeTableViewController.h"
#import "YLMessageTableViewController.h"
#import "YLPullDownView.h"

@interface YLHomeTableViewController ()

@end

@implementation YLHomeTableViewController

- (void)viewDidLoad {
    YLLOG(@"%s",__func__);
    [super viewDidLoad];
    
    [self setUpItems];
    [self setUpTitleView];
}

- (void)setUpTitleView{
    //    设置导航栏中心视图
    UIButton *titleViewByBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    titleViewByBtn.width = 250;
    titleViewByBtn.height = 40;
    [titleViewByBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [titleViewByBtn setTitle:@"首页-文字可变" forState:(UIControlStateNormal)];
    [titleViewByBtn setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:(UIControlStateNormal)];
    //  文字距离右边偏移距离为按钮中图片的长度
    titleViewByBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, titleViewByBtn.imageView.width);
#warning 注意：
    //  距离左边偏移量，应该是文字长度（计算文字长度的方法  收集到文件夹里） + 想要的文字和图片距离
    titleViewByBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 186, 0, 0);
    
    [titleViewByBtn addTarget:self action:@selector(pullDownViewCreation) forControlEvents:(UIControlEventTouchUpInside)];
    
    self.navigationItem.titleView = titleViewByBtn;
}

#pragma mark - 点击titleView按钮，创建下拉视图(待抽取)
- (void)pullDownViewCreation{
    //    添加显示内容
    UITableViewController *tableVC = [[UITableViewController alloc] init];
    tableVC.view.frame = CGRectMake(20, 20, 100, 100);
    //    创建
    
    YLPullDownView *pullDownView = [YLPullDownView  pullDownViewCreationWithContainerImgName:@"popover_background"
                                                                        andContainerImgFrame:CGRectMake((self.view.size.width - 217) * 0.5, 50, 217, 250)
                                                                     andContentView:tableVC.view];
    //    显示
    [pullDownView show];
}

- (void)setUpItems{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self selector:@selector(leftBtnDidClick) normalImgName:@"navigationbar_friendsearch" highlightedImgName:@"navigationbar_friendsearch_highlighted"];
    
    self.navigationItem.rightBarButtonItem =  [UIBarButtonItem itemWithTarget:self selector:@selector(rightBtnDidClick) normalImgName:@"navigationbar_pop" highlightedImgName:@"navigationbar_pop_highlighted"];
}

- (void)leftBtnDidClick{
    YLLOG(@"%s", __func__);
}

- (void)rightBtnDidClick{
    YLLOG(@"%s", __func__);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    [super touchesBegan:touches withEvent:event];
}


@end