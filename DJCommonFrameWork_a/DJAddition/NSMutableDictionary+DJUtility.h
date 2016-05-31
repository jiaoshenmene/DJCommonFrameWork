//
//  NSMutableDictionary+DJUtility.h
//  DJCommonFrameWork
//
//  Created by sogou on 16/5/31.
//  Copyright © 2016年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (DJUtility)
// 设置Key/Value
- (void)setObjectSafe:(id)anObject forKey:(id < NSCopying >)aKey;

@end
