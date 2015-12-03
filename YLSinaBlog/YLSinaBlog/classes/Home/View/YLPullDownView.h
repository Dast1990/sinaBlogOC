//
//  YLPullDownView.h
//  YLSinaBlog
//
//  Created by LongMa on 15/12/1.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YLPullDownView : UIView

/**
 *  下拉视图
 *
 *  @param imgName     容器视图的名字
 *  @param imgFrame    容器视图在透明全屏底层视图的位置
 *  @param contentView 容器视图内要展示的视图
 *
 *  @return 下拉视图对象
 */
+ (instancetype)pullDownViewCreationWithContainerImgName:(NSString *)imgName
                                    andContainerImgFrame:(CGRect)imgFrame
                                          andContentView:(UIView *)contentView;

- (void)show;

@end
