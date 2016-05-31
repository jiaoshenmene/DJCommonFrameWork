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



@end
