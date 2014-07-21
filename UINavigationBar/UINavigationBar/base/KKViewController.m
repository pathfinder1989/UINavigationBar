//
//  KKViewController.m
//  Kang
//
//  Created by Meishi on 14-6-23.
//  Copyright (c) 2014年 Kang. All rights reserved.
//

#import "KKViewController.h"
#import "KKNavigationBar.h"

@interface KKViewController ()
<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation KKViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (NSVersionNumber_iOS_7_0) {
        KKNavigationBar *navigationBar = (KKNavigationBar *)self.navigationController.navigationBar;
        [navigationBar setBarTintColor:[UIColor colorWithRed:0.17 green:0.61 blue:0.86 alpha:1.00]];
        [navigationBar displayColorLayer:NO];
    }else{
        
    }
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"1234"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"1234"];
        
        UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 40)];
        image.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:image];
        
    }
    
    int row = indexPath.row;
    
    cell.textLabel.text = [NSString stringWithFormat:@"------: %ld",row];
    
    return cell;
}

@end

