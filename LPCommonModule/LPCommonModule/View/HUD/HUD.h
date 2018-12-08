//
//  HUD.h
//  KangarooApp
//
//  Created by zhuangyihang on 6/16/15.
//  Copyright (c) 2015 KangarooFamily. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SVProgressHUD/SVProgressHUD.h>
@interface HUD : NSObject

+ (void)showAlert:(NSString *)msg;
+ (void)showMessage:(NSString *)message;
/***
 mask yes, dont't allow user touch
 */
+ (void)showMessage:(NSString *)message mask:(BOOL)enable;

+ (void)dismissMessage;
+ (void)showErrorMessage:(NSString *)message;
+ (void)showSuccessMessage:(NSString *)message;
+ (void)showInfoMessage:(NSString *)message;

@end
