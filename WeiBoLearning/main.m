//
//  main.m
//  WeiBoLearning
//
//  Created by Orient on 16/8/17.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//1.创建UIApplication对象
//2.创建AppDelegate对象，并且成为UIApplication对象代理属性
//3.开启主运行循环：让程序一直运行
//4.加载info.plist文件，判断plist里是否有main.storyboard，如果有，就加载main.storyboard。


//main.storyboard:
//1.初始化窗口
//2.加载storyboard文件：UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"main" bundle:(nil)];
//并且创建箭头指向的控制器
//3.把新创建的控制器作为窗口的根控制器。让窗口显示：makeKeyAndVisable;

//instantiateInitialViewController:默认加载箭头指向的控制器。
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
