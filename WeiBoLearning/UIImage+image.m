//
//  UIImage+image.m
//  WeiBoLearning
//
//  Created by Orient on 16/8/18.
//  Copyright © 2016年 Orient. All rights reserved.

#import "UIImage+image.h"

@implementation UIImage (image)

+ (instancetype)imageWithOriginalName:(NSString *)imageName {

    UIImage *image = [UIImage imageNamed:imageName];
    //设置选中原始图片，无渲染
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}


@end
