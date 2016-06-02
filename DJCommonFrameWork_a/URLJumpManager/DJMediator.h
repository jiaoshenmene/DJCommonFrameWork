//
//  DJMediator.h
//  DJCommonFrameWork
//
//  Created by sogou on 16/5/31.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DJConnectorPrt.h"
@interface DJMediator : NSObject

+ (void) registerConnector:(nonnull id<DJConnectorPrt>) connector;
                            
+ (BOOL) canRouteURL:(nonnull NSURL *)url;


+ (nullable UIViewController *) viewControllerForURL:(nonnull NSURL *)url;

@end
