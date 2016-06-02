//
//  DJConnectorPrt.h
//  DJCommonFrameWork
//
//  Created by sogou on 16/5/31.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DJConnectorPrt <NSObject>

@optional
/*
    Current component request url
 */
-(BOOL)canOpenURL:(nonnull NSURL *)URL;



/**
 * 业务模块挂接中间件，注册自己能够处理的URL，完成url的跳转；
 * 如果url跳转需要回传数据，则传入实现了数据接收的调用者；
 *  @param URL          跳转到的URL，通常为 productScheme://connector/relativePath
 *  @param params       伴随url的的调用参数
 *  @return
 (1) UIViewController的派生实例，交给中间件present;
 (2) nil 表示不能处理;
 (3) [UIViewController notURLController]的实例，自行处理present;
 (4) [UIViewController paramsError]的实例，参数错误，无法导航;
 */
- (nullable UIViewController *)connectToOpenURL:(nonnull NSURL *)URL params:(nullable NSDictionary *)params;

@end
