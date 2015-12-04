//
//  YLTabBar.m
//  YLSinaBlog
//
//  Created by LongMa on 15/12/4.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLTabBar.h"

@implementation YLTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //初始化子控件
        UIButton *addBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [addBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:(UIControlStateNormal)];
        [addBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:(UIControlStateHighlighted)];
        [addBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:(UIControlStateNormal)];
        [addBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:(UIControlStateHighlighted)];
        
        self.addButton = addBtn;
        [self addSubview:addBtn];
    }
    return self;
}

+(instancetype)tabBar{
    return [[self alloc] init];
}

#pragma mark -  设置frame
- (void)layoutSubviews{
    [super layoutSubviews];
    //    设置加号按钮位置
    self.addButton.centerX = self.width * 0.5;
    self.addButton.centerY = self.height * 0.5;
    YLLOG(@"tabbarWidth = %f, tabbarHeight = %f",self.width, self.height);
    self.addButton.size = self.addButton.currentBackgroundImage.size;
    
    CGFloat tabBarItemIndex = 0;
    CGFloat tabBarWidth = [UIScreen mainScreen].bounds.size.width / 5;
    
    for (UIView *child in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([child isKindOfClass:class]) {
            YLLOG(@"%@", child);
            
            if (tabBarItemIndex == 2) {
                tabBarItemIndex++;
            }
            //            设置items坐标
            child.x = tabBarItemIndex * tabBarWidth;
            YLLOG(@"%f, %f",tabBarItemIndex, tabBarItemIndex * tabBarWidth);
            tabBarItemIndex++;
        }
    }
    YLLOG(@"%@", self.addButton);
    
}


@end
