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
    [self addChildController:[[YLHomeTableViewController alloc] init]
                   WithTitle:@"首页"
             normalImageName:@"tabbar_home"
               selectedImage:@"tabbar_home_highlighted"];
    [self addChildController:[[YLMessageTableViewController alloc] init]
                   WithTitle:@"信息"
             normalImageName:@"tabbar_message_center"
               selectedImage:@"tabbar_message_center_highlighted"];
    [self addChildController:[[YLDiscoverTableViewController alloc] init]
                   WithTitle:@"发现"
             normalImageName:@"tabbar_discover"
               selectedImage:@"tabbar_discover_highlighted"];
    [self addChildController:[[YLProfileTableViewController alloc] init]
                   WithTitle:@"我"
             normalImageName:@"tabbar_profile"
               selectedImage:@"tabbar_profile_highlighted"];
    
}

- (void)viewWillAppear:(BOOL)animated{
    #warning 注意：别忘记调用父类方法啊！不然打印不出来系统的tabbarItem的frame
    [super viewWillAppear:animated];
    
    UIButton *addButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [addButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:(UIControlStateNormal)];
    [addButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:(UIControlStateHighlighted)];
    [addButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:(UIControlStateNormal)];
    [addButton setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:(UIControlStateHighlighted)];
    addButton.size = addButton.currentBackgroundImage.size;
    addButton.centerX = self.tabBar.width * 0.5;
    addButton.centerY = self.tabBar.height * 0.5;
    
    [self.tabBar addSubview:addButton];
    YLLOG(@"self.tabBar.subviews = %@", self.tabBar.subviews);
}


- (void)addChildController:(UIViewController *)childVC
                 WithTitle:(NSString *)title
           normalImageName:(NSString *)normalImg
             selectedImage:(NSString *)selectedImage{
    childVC.title = title;
    childVC.tabBarItem.image = [[UIImage imageNamed:normalImg]
                                imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]
                                        imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    
    //    文字非系统渲染，不是设置self.tabBarItem
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:(UIControlStateSelected)];
    YLNavigationViewController *nav = [[YLNavigationViewController alloc] initWithRootViewController:childVC];
    
    //  创建随机色时会调用对用控制器的viewDidLoad方法，导致一下子就创建了 4 个view，这不合理，因为用户很可能就用一个home主页，不点其他页面，内存没必要提前去加载这些视图，即：没必要提前创建未显示的view。所以，不要创建随机色。
    //    childVC.view.backgroundColor = YLRandomColor;
    [self addChildViewController:nav];
}



@end
