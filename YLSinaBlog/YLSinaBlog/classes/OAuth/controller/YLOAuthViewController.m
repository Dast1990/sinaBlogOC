//
//  YLOAuthViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/12/4.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLOAuthViewController.h"
#import <AFNetworking.h>

@interface YLOAuthViewController ()
@property (nonatomic, weak) UIWebView *webView;

@end

@implementation YLOAuthViewController

- (void)viewDidLoad{
    YLLOG(@"%s", __func__);
    UIWebView *webView = [[UIWebView alloc] init];
    
    webView.frame = self.view.bounds;
//只有拖动到头时，才可以看到背景色
    webView.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:webView];
    self.webView = webView;
    
    [self webViewOperation];
}


- (void)webViewOperation{
    
    NSURL *url = [NSURL URLWithString:@""];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url ];
    
    [self.webView loadRequest:urlRequest];
}



@end
