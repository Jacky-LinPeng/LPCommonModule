//
//  LPBaseManager.h
//  GameLive
//
//  Created by linpeng on 2018/11/2.
//  Copyright © 2018 IGG. All rights reserved.

#import <Foundation/Foundation.h>

@interface LPBaseManager : NSObject

+ (instancetype)sharedInstance;

+ (instancetype)sharedInstance:(BOOL)createIfNotExists;

+ (void)removeInstance;

// 观察者相关
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;

- (void)notifyObserversWithSelector:(SEL)selector withObject:(id)object;
- (void)notifyObserversWithSelector:(SEL)selector withObjectOne:(id)objectOne objectTwo:(id)objectTwo;
- (void)notifyObserversWithSelector:(SEL)selector withObjectOne:(id)objectOne objectTwo:(id)objectTwo objectThree:(id)objectThree;

// block 相关
- (void)addBlock:(id)block withKey:(NSString *)key;
- (NSMutableArray *)blocksWithKey:(NSString *)key;
- (void)clearBlocksForKey:(NSString *)key;
- (void)clearAllBlocks;

// 清理资源
- (void)invalidate;

#pragma mark - 错误相关

- (NSError *)makeErrorWithCode:(NSInteger)code message:(NSString *)message;

@end
