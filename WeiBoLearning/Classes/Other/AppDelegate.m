//
//  AppDelegate.m
//  WeiBoLearning
//
//  Created by Orient on 16/8/17.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "AppDelegate.h"
#import "OWBTabBarController.h"
//封装思想：项目中有相同的功能，抽取一个类，封装好。如何封装，自己的事情，全交给自己管理
//抽方法：一般一个功能就抽一个方法



//程序遇到模拟器尺寸不对，找到启动图片，默认的模拟器尺寸由启动图片决定。
//LaunchScreen:代替之前的启动图片
//好处：可以展示更多的东西，可以只需要找出一个大尺寸图片
@interface AppDelegate ()

@end

@implementation AppDelegate

//uitabbarcontroller控制器的view在一创建控制器的时候就会加载view
//uiviewcontroller的view才是懒加载

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    OWBTabBarController *tabBarVc = [[OWBTabBarController alloc] init];
    
    
        //设置窗口的根控制器
    self.window.rootViewController = tabBarVc;
    
    [self.window makeKeyAndVisible];
    
    //makeKeyAndVisible底层实现：
    //1.self.window.hidden = NO;
    //2.application.keywindow = self.window;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
