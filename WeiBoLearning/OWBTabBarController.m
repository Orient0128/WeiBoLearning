//
//  OWBTabBarController.m
//  WeiBoLearning
//
//  Created by Orient on 16/8/18.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OWBTabBarController.h"
#import "UIImage+image.h"

@interface OWBTabBarController ()

@end

@implementation OWBTabBarController

//程序一启动，就会把所有的类加载进内存
//作用：加载类的时候调用
//+(void) load {
//    
//}


//类初始方法
//当第一次使用这个类或者子类的时候调用
//作用：初始化类
+(void)initialize {
    
    //获取所有tabBarItem外观标识
    //appearance只要一个类遵守UIAPpearance，就能获取全局外观
//    UITabBarItem *item = [UITabBarItem appearance];
    
    //self -> OWBTabBarController
    //获取当前类下的所有tabBarItem外观标识，一般用此方法
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    //设置title选中后文字颜色（全局设置）
    NSMutableDictionary *att = [NSMutableDictionary dictionary];
    att[NSForegroundColorAttributeName] = [UIColor blackColor];
    //    [att setObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];同上句
    [item setTitleTextAttributes:att forState:UIControlStateSelected];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    

    
}

//如果通过模型设置控件的文字颜色，只能通过文本属性（富文本：颜色，字体，空心，阴影，图文混排）

-(void)setUpOneChildViewContriller:(UIViewController *)vc  image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title {
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = image;
    
    //右上角标
    //message.tabBarItem.badgeValue = @"10";

    vc.tabBarItem.selectedImage = selImage;
    
    [self addChildViewController:vc];
    
}
//item是苹果的模型命名规范

//ios7之后，uitabbar图片渲染默认蓝色
-(void)setUpAllChildViewController {
    
    //管理子控制器
    //home
    UIViewController *home = [[UIViewController alloc] init];
    home.view.backgroundColor = [UIColor greenColor];
    
    [self setUpOneChildViewContriller:home image:[UIImage imageNamed:@"ReaderIcon"] selImage:[UIImage imageWithOriginalName:@"ReaderIconSelect"] title:@"首页"];
    
    //message
    UIViewController *message = [[UIViewController alloc] init];
    message.view.backgroundColor = [UIColor blueColor];
    
    [self setUpOneChildViewContriller:message image:[UIImage imageNamed:@"NewsIcon"] selImage:[UIImage imageWithOriginalName:@"NewsIconSelect"] title:@"消息"];
    
    //discover
    UIViewController *discover = [[UIViewController alloc] init];
    discover.view.backgroundColor = [UIColor purpleColor];
    
    [self setUpOneChildViewContriller:discover image:[UIImage imageNamed:@"DiscoveryIcon"] selImage:[UIImage imageWithOriginalName:@"DiscoveryIconSelect"] title:@"发现"];
    
    //profile
    UIViewController *profile = [[UIViewController alloc] init];
    profile.view.backgroundColor = [UIColor lightGrayColor];
    
    [self setUpOneChildViewContriller:profile image:[UIImage imageNamed:@"MyIcon"] selImage:[UIImage imageWithOriginalName:@"MyIconSelect"] title:@"我"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
