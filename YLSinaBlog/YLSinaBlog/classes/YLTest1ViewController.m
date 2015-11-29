//
//  YLTest1ViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLTest1ViewController.h"
#import "YLTest2ViewController.h"

@interface YLTest1ViewController ()

@end

@implementation YLTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //   按钮不显示原因(见天色！)：1.没设置大小  2.被覆盖（通过查看运行时的3维视图，可以排除这种）
    UIButton *backBtn = [[UIButton alloc] init];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"compose_emoticonbutton_background"] forState:(UIControlStateNormal)];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"compose_emoticonbutton_background_highlighted"] forState:(UIControlStateHighlighted)];
    
    //    坐标无效，因为赋值时leftBarButtonItem已经确定了按钮的位置,backBtn.size,能这么写因为为UIView写了分类，更加方便。
    backBtn.size = backBtn.currentBackgroundImage.size;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem alloc] initWithTitle:<#(nullable NSString *)#> style:<#(UIBarButtonItemStyle)#> target:<#(nullable id)#> action:<#(nullable SEL)#>
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    YLTest2ViewController *test2VC = [[YLTest2ViewController alloc] initWithNibName:@"YLTest2ViewController" bundle:nil];
    [self.navigationController pushViewController:test2VC animated:YES];
}

@end
