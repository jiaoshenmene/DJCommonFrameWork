//
//  DJMediator.m
//  DJCommonFrameWork
//
//  Created by sogou on 16/5/31.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "DJMediator.h"
//#import "NSMutableDictionary+DJUtility.h"


static NSMutableDictionary<NSString *, id<DJConnectorPrt>> *m_connectorMap = nil;


@implementation DJMediator

+ (void) registerConnector:(id<DJConnectorPrt>)connector
{
    if (![connector conformsToProtocol:@protocol(DJConnectorPrt)]) {
        return;
    }
    
    @synchronized (m_connectorMap) {
        if (m_connectorMap == nil) {
            m_connectorMap = [NSMutableDictionary dictionary];
        }
        
        NSString *connectorClsStr = NSStringFromClass([connector class]);
        if ([m_connectorMap objectForKey:connectorClsStr] == nil) {
            [m_connectorMap setObjectSafe:connector forKey:connectorClsStr];
            
        }
    }
}


+ (BOOL) canRouteURL:(nonnull NSURL *)url
{
    if (!m_connectorMap || m_connectorMap <= 0 ) {
        return NO;
    }
    __block BOOL success = NO;
    [m_connectorMap enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, id<DJConnectorPrt>  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([obj respondsToSelector:@selector(canOpenURL:)]) {
            if ([obj canOpenURL:url]) {
                success = YES;
                *stop = YES;
            }
        }
    }];
    return success;
}









+ (nullable UIViewController *) viewControllerForURL:(nonnull NSURL *)url withParameters:(nullable NSDictionary *)params
{
    if (!m_connectorMap || m_connectorMap.count <= 0 ) {
        return nil;
    }
    
    __block UIViewController *returnObj = nil;
    __block int queryCount = 0;
    
    return nil;
}










@end
