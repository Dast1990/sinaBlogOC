//
//  YLNavigationViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.

#import "YLNavigationViewController.h"

@interface YLNavigationViewController ()

@end

@implementation YLNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if(self.viewControllers.count > 0)
    {
        //        注意：让被push的控制器hidesBottomBarWhenPushed，不是让导航控制器hidesBottomBarWhenPushed
        viewController.hidesBottomBarWhenPushed = YES;
        //   按钮不显示原因(见天色！)：1.没设置大小  2.被覆盖（通过查看运行时的3维视图，可以排除这种）
        UIButton *backBtn = [[UIButton alloc] init];
        [backBtn setBackgroundImage:[UIImage imageNamed:@"compose_emoticonbutton_background"] forState:(UIControlStateNormal)];
        [backBtn setBackgroundImage:[UIImage imageNamed:@"compose_emoticonbutton_background_highlighted"] forState:(UIControlStateHighlighted)];
        
        //    坐标无效，因为赋值时leftBarButtonItem已经确定了按钮的位置,backBtn.size,能这么写因为为UIView写了分类，更加方便。
        backBtn.size = backBtn.currentBackgroundImage.size;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
        
        [backBtn addTarget:self action:@selector(backBtnDidClick) forControlEvents:(UIControlEventTouchUpInside)];
        
        
    }
    //    拦截了push方法而没有调用父类push方法，会导致tabBarcontroller的四个子控制器没法push出来！
    //    注意：必须放在hidesBottomBarWhenPushed代码后面（if条件改为 > 0），因为先push的话，已经把tabbar展示出来了！
    [super pushViewController:viewController animated:YES];
}

- (void)backBtnDidClick{
    //    这里要用self，不是self.navigationController。self就是导航控制器，再拿他所在的导航控制器，啥也没有，是nil。此时点击back item，会执行back方法，但是pop方法不会响应nil（ps：nil调用任何方法不会报错）。
    [self popViewControllerAnimated:YES];
}

- (void)jumpToHomePage{
    [self popToRootViewControllerAnimated:YES];
}

@end
