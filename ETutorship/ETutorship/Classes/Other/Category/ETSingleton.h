//
//  ETSingleton.h
//  ETutorship
//
//  Created by OuYangQiuPing on 16/7/27.
//  Copyright © 2016年 ETutorship. All rights reserved.
//

/*
 快速生成单例。
 使用方法：导入Singleton.h，在.h文件中加上宏singleton_interface(类名)，.m文件中加上宏singleton_implementation(类名)，即可。
 */

#ifndef ETSingleton_h
#define ETSingleton_h

// .h
#define singleton_interface(class) + (instancetype)shared##class;

// .m
#define singleton_implementation(class) \
static class *_instance; \
\
+ (id)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
\
return _instance; \
} \
\
+ (instancetype)shared##class \
{ \
if (_instance == nil) { \
_instance = [[class alloc] init]; \
} \
\
return _instance; \
}

#endif /* ETSingleton_h */
