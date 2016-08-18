//
//  UIImage+image.h
//  WeiBoLearning
//
//  Created by Orient on 16/8/18.
//  Copyright © 2016年 Orient. All rights reserved.
//


//抽分类
//New:objc file，file type:category,class:UIimage


#import <UIKit/UIKit.h>

@interface UIImage (image)


//instancetype：默认识别当前是哪个类或对象调用，然后转换成对应的类的对象
//在这里转换成：UIImage *

//加载最原始图片
+ (instancetype)imageWithOriginalName:(NSString *)imageName;

@end
