//
//  HUD.m
//  KangarooApp
//
//  Created by zhuangyihang on 6/16/15.
//  Copyright (c) 2015 KangarooFamily. All rights reserved.
//

#import "HUD.h"
@implementation HUD

+ (void)showAlert:(NSString *)msg{
    if (msg.length>0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:msg preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alertController addAction:ok];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
    }
}

+ (void)showMessage:(NSString *)message{
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD showWithStatus:message];
}

+(void)showMessage:(NSString *)message mask:(BOOL)enable{
    [SVProgressHUD setDefaultMaskType:enable ? SVProgressHUDMaskTypeClear:SVProgressHUDMaskTypeNone];
    [SVProgressHUD showWithStatus:message];
}

+ (void)dismissMessage{
    [SVProgressHUD dismiss];
}

+ (void)showErrorMessage:(NSString *)message{
    [HUD dismissMessage];
    if (message.length>0) {
        [SVProgressHUD showErrorWithStatus:message];
    }
}

+ (void)showInfoMessage:(NSString *)message{
    [HUD dismissMessage];
    if (message.length>0) {
        [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
        [SVProgressHUD showInfoWithStatus:message];
    }
}

+ (void)showSuccessMessage:(NSString *)message{
    [HUD dismissMessage];
    if (message.length>0) {
        [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
        [SVProgressHUD showSuccessWithStatus:message];
    }
}

@end
