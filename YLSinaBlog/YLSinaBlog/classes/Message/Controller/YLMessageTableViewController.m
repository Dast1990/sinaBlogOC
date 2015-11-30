//
//  YLMessageTableViewController.m
//  YLSinaBlog
//
//  Created by LongMa on 15/11/29.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import "YLMessageTableViewController.h"
#import "YLTest1ViewController.h"

@interface YLMessageTableViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation YLMessageTableViewController

- (void)viewDidLoad {
     YLLOG(@"%s",__func__);
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"发消息" style:(UIBarButtonItemStyleDone) target:self action:@selector(sendMsg)];
    self.navigationItem.rightBarButtonItem.enabled = NO;
}

- (void)viewWillAppear:(BOOL)animated{
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor lightGrayColor];
    YLLOG(@"%s", __func__);
    
}

- (void)sendMsg{
    YLLOG(@"%s", __func__);
}

#pragma mark -  UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    // initWithNibName 不能带 .xib,切记！
    YLTest1ViewController *test1VC = [[YLTest1ViewController alloc] initWithNibName:@"YLTest1ViewController" bundle:nil];
    
    [self.navigationController pushViewController:test1VC  animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reusedCell" ];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleSubtitle) reuseIdentifier:@"reusedCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld列",indexPath.row + 1];
    cell.detailTextLabel.text = @"haha";
    return cell;
}

@end