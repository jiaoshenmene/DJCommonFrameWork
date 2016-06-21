//
//  UIColor+DJUtility.h
//  DJCommonFrameWork
//
//  Created by dujia on 16/6/21.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DJUtility)
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha;

+ (UIColor *)colorWithARGB:(NSInteger)ARGBValue;
@end
