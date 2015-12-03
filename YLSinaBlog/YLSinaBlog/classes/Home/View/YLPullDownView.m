//
//  YLPullDownView.m
//  YLSinaBlog
//
//  Created by LongMa on 15/12/1.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLPullDownView.h"
#import "YLGrayViewOfPullDownView.h"

@interface YLPullDownView ()

@end

@implementation YLPullDownView

- (instancetype)pullDownViewCreationWithContainerImgName:(NSString *)imgName
                                    andContainerImgFrame:(CGRect)imgFrame
                                          andContentView:(UIView *)contentView{
    //   新建imgView：存放视图的容器
    YLGrayViewOfPullDownView *imgView = [[YLGrayViewOfPullDownView alloc] initWithImage:[UIImage imageNamed:imgName]];
    imgView.userInteractionEnabled = YES;
    imgView.frame = imgFrame;
     
    //     设置透明遮罩
    self.backgroundColor = [UIColor clearColor];
    self.frame = [UIScreen mainScreen].bounds;
    
    //    添加显示内容
    [imgView addSubview:contentView];
    
    //   注意： 用遮罩（不是window） 来包含imgView，遮罩作为下拉视图的根视图！这样比两个都加到窗口上要 更易封装。
    [self addSubview:imgView];
    return self;
}

+  (instancetype)pullDownViewCreationWithContainerImgName:(NSString *)imgName
                                     andContainerImgFrame:(CGRect)imgFrame
                                           andContentView:(UIView *)contentView{
    return [[[self alloc] init] pullDownViewCreationWithContainerImgName:imgName andContainerImgFrame:imgFrame andContentView:contentView];
}


- (void)show{
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    [window addSubview:self];
}


#pragma mark -  非本控件 tableView 的区域点击才可以响应这个方法。
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    [self removeFromSuperview];
    
}

@end
