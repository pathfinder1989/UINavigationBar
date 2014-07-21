//
//  KKNavigationController.m
//  TestNavigation
//
//  Created by Meishi on 14-4-16.
//  Copyright (c) 2014年 KangBo. All rights reserved.
//

#import "KKNavigationController.h"
#import "KKNavigationBar.h"

#define kNavigationBartHeight (NSVersionNumber_iOS_7_0 ? (64) : (44))
#define TOP_VIEW  [[UIApplication sharedApplication]keyWindow].rootViewController.view
#define VIEW_WIDTH  (DEVICE_IS_IPAD ? 768 : 320)

// 动画时间
#define kAnimationTime  (DEVICE_IS_IPAD ? 0.4 : 0.3)

@interface KKNavigationController ()
<UINavigationControllerDelegate>



@end

@implementation KKNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (id)initWithRootViewController:(UIViewController *)rootViewController
{
    if (NSVersionNumber_iOS_7_0) {
        self = [super initWithNavigationBarClass:[KKNavigationBar class] toolbarClass:nil];
        if (self) {
            self.delegate = self;
            self.viewControllers = @[rootViewController];
        }
    }else{
        self = [super initWithRootViewController:rootViewController];
        if (self) {
            self.delegate = self;
            self.viewControllers = @[rootViewController];
        }
    }
    return self;
}

- (void)setBackGroundImage:(UIImage *)backGroundImage
{
    _backGroundImage = backGroundImage;
    
    if ([self.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) {
        [self.navigationBar setBackgroundImage:backGroundImage forBarMetrics:UIBarMetricsDefault];
        return;
    }
    
    self.navigationBar.layer.contents = (id)backGroundImage.CGImage;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.backGroundImage = [UIImage imageNamed:@"navigationbar_bg.png"];
    
}

#define kNavigationMinY (NSVersionNumber_iOS_7_0 ? 0 : 20)


#pragma mark UIInterfaceOrientationMask
- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_6_0
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationPortrait==interfaceOrientation;
}
#endif

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
