//
//  StaticLib.h
//  StaticLib
//
//  Created by _Zach on 4/28/14.
//  Copyright (c) 2014 GLOO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface StaticLib : NSObject

@property (nonatomic,readonly) UIImage *originalImage;

- (NSString *)sayHey:(NSString *)name;
- (id)initWithImage:(UIImage *)image;
- (UIImage *)grayScaleImage;
- (UIImage *)oldImageWithIntensity:(CGFloat)level;

@end
