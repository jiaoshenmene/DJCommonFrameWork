//
//  NSMutableDictionary+DJUtility.m
//  DJCommonFrameWork
//
//  Created by sogou on 16/5/31.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import "NSMutableDictionary+DJUtility.h"

@implementation NSMutableDictionary (DJUtility)
// 设置Key/Value
- (void)setObjectSafe:(id)anObject forKey:(id < NSCopying >)aKey
{
    if(anObject != nil)
    {
        [self setObject:anObject forKey:aKey];
    }
    else
    {
        if ([self objectForKey:aKey])
        {
            [self removeObjectForKey:aKey];
        }
    }
}
@end
