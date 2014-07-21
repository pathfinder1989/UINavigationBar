//
//  KKBaseViewController.m
//  UINavigationBar
//
//  Created by Meishi on 14-7-21.
//  Copyright (c) 2014年 Kangbo. All rights reserved.
//

#import "KKBaseViewController.h"
#import "KKNavigationBar.h"
#import "KKNavigationController.h"


@interface KKBaseViewController ()

@end

@implementation KKBaseViewController

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
    
//    KKNavigationBar *navigationBar = (KKNavigationBar *)self.navigationController.navigationBar;
//    [navigationBar setBarTintColor:[UIColor colorWithRed:0.17 green:0.61 blue:0.86 alpha:1.00]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
