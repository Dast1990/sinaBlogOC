//
//  YLMind.c
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//
/* V1.在tabBarC基础上显示了4个子控制器的界面。设置了pch文件，测试用的xib。设置了子控制器的leftBarButtonItem属性，待完善自定义导航控制器。
V2.写UIView分类，方直接.size,.x 等快速代码
3.统一所有导航控制器左上角和右上角的内容。
    自定义导航控制器，拦截（重写自带的方法）所有push出来的控制器（必须调用[super push方法]，才能显示tabBarC的四个子控制器）
    通过push方法中控制器参数，设置器左上角和右上角的内容(当导航控制器的子控制器数大于1时，才设置导航栏的左右item)
    隐藏tabbar（无效：[super push方法]位置不对,要放在最后）





*/