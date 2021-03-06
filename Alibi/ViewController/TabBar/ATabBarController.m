//
//  ATabBarController.m
//  Alibi
//
//  Created by Matias Willand on 20/11/13.
//  Copyright (c) 2013 Planet 1107. All rights reserved.
//

#import "ATabBarController.h"
#import "AWelcomeViewController.h"
#import "AConnect.h"

@implementation ATabBarController


#pragma mark - Object lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - View lifecycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.tabBar.translucent = NO;
    self.tabBar.barTintColor = [UIColor colorWithRed:248/255.0f green:124/255.0f blue:236/255.0f alpha:1.0f];
    self.tabBar.tintColor = [UIColor blackColor];
//    self.tabBar.selectedImageTintColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor whiteColor];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[[UIColor whiteColor] colorWithAlphaComponent:0.8f], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    welcomeViewController = [[AWelcomeViewController alloc] initWithNibName:@"AWelcomeViewController" bundle:nil];
    welcomeViewController.delegate = self;
    [welcomeViewController loadView];
    [self.view addSubview:welcomeViewController.view];
    welcomeViewController.view.frame = self.view.frame;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    if (![AConnect sharedConnect].currentUser) {
        welcomeViewController.view.alpha = 1.0f;
    } else {
        welcomeViewController.view.alpha = 0.0f;
    }
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - AWelcomeViewControllerDelegate methods

- (void)showLogin {
    
    ALoginViewController *loginViewController = [[ALoginViewController alloc] initWithNibName:@"ALoginViewController" bundle:nil];
    UINavigationController *loginNavigationViewController = [[UINavigationController alloc] initWithRootViewController:loginViewController];
    loginNavigationViewController.navigationBar.translucent = NO;
    [self presentViewController:loginNavigationViewController animated:YES completion:^{ }];
}

- (void)showRegister {
    
    ARegisterViewController *registerViewController = [[ARegisterViewController alloc] initWithNibName:@"ARegisterViewController" bundle:nil];
    UINavigationController *registerNavigationViewController = [[UINavigationController alloc] initWithRootViewController:registerViewController];
    registerNavigationViewController.navigationBar.translucent = NO;
    [self presentViewController:registerNavigationViewController animated:YES completion:^{ }];
}

@end
