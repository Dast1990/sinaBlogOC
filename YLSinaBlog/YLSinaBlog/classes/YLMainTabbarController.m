//
//  YLMainTabbarController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLMainTabbarController.h"
#import "YLHomeTableViewController.h"
#import "YLMessageTableViewController.h"
#import "YLDiscoverTableViewController.h"
#import "YLProfileTableViewController.h"
#import "YLNavigationViewController.h"

@interface YLMainTabbarController ()

@end

@implementation YLMainTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    添加子控制器
    [self addChildController:[[YLHomeTableViewController alloc] init] WithTitle:@"首页"
             normalImageName:@"tabbar_home"
               selectedImage:@"tabbar_home_highlighted"];
    
    [self addChildController:[[YLMessageTableViewController alloc] init] WithTitle:@"信息"
             normalImageName:@"tabbar_message_center"
               selectedImage:@"tabbar_message_center_highlighted"];
    [self addChildController:[[YLDiscoverTableViewController alloc] init] WithTitle:@"发现"
             normalImageName:@"tabbar_discover"
               selectedImage:@"tabbar_discover_highlighted"];
    
    [self addChildController:[[YLProfileTableViewController alloc] init] WithTitle:@"我"
             normalImageName:@"tabbar_profile"
               selectedImage:@"tabbar_profile_highlighted"];
}

- (void)addChildController:(UIViewController *)childVC WithTitle:(NSString *)title normalImageName:(NSString *)normalImg selectedImage:(NSString *)selectedImage{
    childVC.title = title;
    childVC.tabBarItem.image = [[UIImage imageNamed:normalImg]
                                imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]
                                        imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    
    //    文字非系统渲染，不是设置self.tabBarItem
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:(UIControlStateSelected)];
    YLNavigationViewController *nav = [[YLNavigationViewController alloc] initWithRootViewController:childVC];
    childVC.view.backgroundColor = YLRandomColor;
    [self addChildViewController:nav];
}



@end
