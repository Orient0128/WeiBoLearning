//
//  OWBTabBar.m
//  WeiBoLearning
//
//  Created by Orient on 16/8/18.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OWBTabBar.h"

@interface OWBTabBar ()

@property (nonatomic,weak) UIButton *plusBtn;

@end

@implementation OWBTabBar

-(UIButton *)plusBtn {
    
    if (_plusBtn == nil)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"VoiceIcon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"VoiceIconSelect"] forState:UIControlStateHighlighted];
        [btn setBackgroundImage:[UIImage imageNamed:@"NavigationSquare"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"NavigationSquare"] forState:UIControlStateHighlighted];
        
        //默认按钮尺寸和背景图片一样大
        //sizeToFit:默认会根据按钮的背景图或者image和文字计算出按钮最合适的尺寸
        [btn sizeToFit];
        
        _plusBtn = btn;
        //_plusBtn是弱引用，未被强引就会销毁，必须添加下句
        [self addSubview:_plusBtn];

    }
    return _plusBtn;
}

//self.items UITabBarItem模型，有多少个子控制器，就有多少UITabBarItem模型
//调整子控件的位置
-(void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;

    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = w / (self.items.count + 1);
    CGFloat btnH = h;
    
//    NSLog(@"%@",self.subviews);
    //调整系统自带的tabBar按钮位置
    int i = 0;
    for (UIView *tabBarButton in self.subviews) {
        //判断是否是UITabBarButton
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                i = 3;
            }
            btnX = i * btnW;
            tabBarButton.frame = CGRectMake(btnX, btnY, btnW, btnH);
            i++;
//            NSLog(@"%@",tabBarButton);
        }
    }
    
    //设置添加按钮的位置
    self.plusBtn.center = CGPointMake(w * 0.5, h * 0.5);
    //    self.plusBtn.bounds = CGRectMake(0, 0, self.plusBtn.currentBackgroundImage.size.width, self.plusBtn.currentBackgroundImage.size.height);
    //可简化为31行：        [btn sizeToFit];

}

@end
