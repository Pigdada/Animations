//
//  AppDelegate.m
//  Animations
//
//  Created by YouXianMing on 15/11/16.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "AppDelegate.h"
#import "UIViewController+RuntimeReplace.h"
#import "AnimationsListController.h"
#import "AnimationsListViewNavigationController.h"
#define Funcname(objc,func)   @(((objc.func),#func))
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
     Swift version Animations - https://github.com/YouXianMing/Swift-Animations
     
     Lateast no warning version : Version 10.3 (10G8)
     
     Email: YouXianMing1987@iCloud.com
     
     */
    NSLog(@"%@", Funcname(self, window));
    
#ifdef DEBUG
    
    [UIViewController debug_runtime_replace];
    
#endif
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    AnimationsListController               *viewController       = [AnimationsListController new];
    AnimationsListViewNavigationController *navigationController = [[AnimationsListViewNavigationController alloc] initWithRootViewController:viewController
                                                                                                                       setNavigationBarHidden:YES];
    self.window.rootViewController = navigationController;
    self.window.backgroundColor    = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
