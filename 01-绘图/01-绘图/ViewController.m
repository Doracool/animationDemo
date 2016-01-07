//
//  ViewController.m
//  01-绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSArray *dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    _dataArr = @[@"LineViewViewController",@"ShapeViewController",@"CircleViewController",@"TextImageViewController"];
    [super viewDidLoad];
    UITableView *maTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    maTableView.delegate = self;
    maTableView.dataSource = self;
    [self.view addSubview:maTableView];
}


#pragma mark - UItableViewDatasoure

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *QYId  = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:QYId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:QYId];
    }
    cell.textLabel.text = _dataArr[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *viewControl = [NSClassFromString(_dataArr[indexPath.row]) new];
    [self.navigationController pushViewController:viewControl animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
