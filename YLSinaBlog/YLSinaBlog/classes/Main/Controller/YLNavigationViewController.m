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
    
    if(self.viewControllers.count > 0){
        //        注意：让被push的控制器hidesBottomBarWhenPushed，不是让导航控制器hidesBottomBarWhenPushed
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self selector:@selector(backBtnDidClick) normalImgName:@"compose_emoticonbutton_background" highlightedImgName:@"compose_emoticonbutton_background_highlighted"];
        
        
        viewController.navigationItem.rightBarButtonItem =  [UIBarButtonItem itemWithTarget:self selector:@selector(homeBtnDidClick) normalImgName:@"tabbar_home" highlightedImgName:@"tabbar_home_highlighted"];
    }
    //    拦截了push方法而没有调用父类push方法，会导致tabBarcontroller的四个子控制器没法push出来！
    //    注意：必须放在hidesBottomBarWhenPushed代码后面（if条件改为 > 0），因为先push的话，已经把tabbar展示出来了！
    [super pushViewController:viewController animated:YES];
}


- (void)backBtnDidClick{
    //    这里要用self，不是self.navigationController。self就是导航控制器，再拿他所在的导航控制器，啥也没有，是nil。此时点击back item，会执行back方法，但是pop方法不会响应nil（ps：nil调用任何方法不会报错）。
    [self popViewControllerAnimated:YES];
}

- (void)homeBtnDidClick{
    [self popToRootViewControllerAnimated:YES];
}

@end
