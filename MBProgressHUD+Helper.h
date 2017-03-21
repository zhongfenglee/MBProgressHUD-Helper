//
//  MBProgressHUD+Helper.h
//  新浪微盾
//
//  Created by zhongfeng1 on 2016/12/19.
//  Copyright © 2016年 zhongfeng. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (Helper)

// 只有文字提示
+(void)showInView:(UIView *)view tip:(NSString *)tip autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view tip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// mode+文字 提示
+(void)showInView:(UIView *)view tip:(NSString *)tip mode:(MBProgressHUDMode)mode autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view tip:(NSString *)tip mode:(MBProgressHUDMode)mode autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// 成功提升
+(void)showInView:(UIView *)view successTip:(NSString *)tip autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view successTip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// 错误提示
+(void)showInView:(UIView *)view errorTip:(NSString *)tip autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view errorTip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// 带按钮的提示
+(void)showInView:(UIView *)view title:(NSString *)title tip:(NSString *)tip mode:(MBProgressHUDMode)mode target:(id)targrt action:(SEL)action;

@end
