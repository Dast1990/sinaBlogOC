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
        
        self.backgroundImage = [UIImage imageNamed:@"tabbar_background"];
        [self addSubview:addBtn];
        self.addButton = addBtn;
    }
    return self;
}

+(instancetype)tabBar{
    return [[self alloc] init];
}

#pragma mark -  设置frame
- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat tabBarWidth = self.width / 5;
    //    设置加号按钮
    self.addButton.centerX = self.width * 0.5;
    self.addButton.centerY = self.height * 0.5;
//    self.addButton.size = self.addButton.currentBackgroundImage.size;
    self.addButton.size = CGSizeMake(tabBarWidth, self.height);
    
    CGFloat tabBarItemIndex = 0;
    
    for (UIView *child in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([child isKindOfClass:class]) {
            YLLOG(@"%@", child);
            
            if (tabBarItemIndex == 2) {
                tabBarItemIndex++;
            }
            //            item的宽度在这设置！
            child.width = tabBarWidth;
            child.x = tabBarItemIndex * tabBarWidth ;
            YLLOG(@"%f, %f",tabBarItemIndex, tabBarItemIndex * tabBarWidth);
            tabBarItemIndex++;
        }
    }
}


@end
