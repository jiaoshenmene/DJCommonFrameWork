//
//  DJCommDef.h
//  DJCommonFrameWork
//
//  Created by dujia on 16/6/11.
//  Copyright © 2016年 sogou. All rights reserved.
//

#ifndef DJCommDef_h
#define DJCommDef_h

// 单例集成
#define StaticInstanceImplementation(x)     \
+ (instancetype)getInstance {               \
static x *__instance = nil;             \
static dispatch_once_t onceToken;       \
dispatch_once(&onceToken, ^{            \
__instance = [x new];               \
});                                     \
return __instance;                      \
}

// initSelf
#define ObjectInitSelf                      \
- (instancetype)init {                      \
self = [super init];                    \
if (self) {                             \
[self initSelf];                    \
}                                       \
return self;                            \
}
#endif /* DJCommDef_h */
