//
//  AppDelegate.m
//  LPLaunchManagerDemo
//
//  Created by XuYafei on 15/12/29.
//  Copyright © 2015年 loopeer. All rights reserved.
//

#import "AppDelegate.h"
#import "LPLaunchManager.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *URLString = @"http://ydsj.didaaa.com/api/v1/advert/list";
    [[LPLaunchManager shareInstance] setDuration:5.0];
    [LPLaunchManager showAdvertWithURL:URLString disappearHandler:nil];
    [LPLaunchManager showSkipButton:nil completed:nil];
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    [_window makeKeyAndVisible];
    return YES;
}

@end
