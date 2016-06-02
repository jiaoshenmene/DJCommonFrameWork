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





@end
