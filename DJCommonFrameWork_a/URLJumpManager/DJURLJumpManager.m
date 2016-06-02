//
//  DJURLJumpManager.m
//  DJCommonFrameWork
//
//  Created by sogou on 16/6/2.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "DJURLJumpManager.h"
#import "FrameWorkTestVC.h"

@interface DJURLJumpManager()<DJConnectorPrt>

@end

@implementation DJURLJumpManager
+ (void) load
{
    [DJMediator registerConnector:[self getInstance]];
}

StaticInstanceImplementation(DJURLJumpManager)
ObjectInitSelf

- (void) initSelf
{
    
}

-(BOOL)canOpenURL:(nonnull NSURL *)URL
{
    if ([URL.host isEqualToString:@"framework"]) {
        NSLog(@"yes");
        return YES;
    }
    return NO;
}


- (UIViewController *) connectToOpenURL:(NSURL *)URL params:(NSDictionary *)params
{
    FrameWorkTestVC *vc = [[FrameWorkTestVC alloc] init];
    return vc;
}
@end
