//
//  MBProgressHUD+Helper.m
//  新浪微盾
//
//  Created by zhongfeng1 on 2016/12/19.
//  Copyright © 2016年 zhongfeng. All rights reserved.
//

#import "MBProgressHUD+Helper.h"

// HUD多少秒后隐藏
static NSTimeInterval const delay = 1.5;

@implementation MBProgressHUD (Helper)

+(void)showInView:(UIView *)view iconName:(NSString *)iconName tip:(NSString *)tip mode:(MBProgressHUDMode)mode autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    // 显示“加载失败”
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    hud.mode = mode;
    
    if (mode == MBProgressHUDModeCustomView) {
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@",iconName]]];
    }else if (mode == MBProgressHUDModeIndeterminate) {
//        hud.activityIndicatorColor = [UIColor whiteColor];// 此方法已被废弃
        [UIActivityIndicatorView appearanceWhenContainedInInstancesOfClasses:@[[MBProgressHUD class]]].color = [UIColor whiteColor];
    }
//    mode == MBProgressHUDModeCustomView? hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@",iconName]]] : (hud.activityIndicatorColor = [UIColor whiteColor]);
    
    hud.bezelView.backgroundColor = [UIColor blackColor];
    
    hud.label.text = tip;
    hud.label.textColor = [UIColor whiteColor];

    hud.completionBlock = completionBlock;
    
    if (autoHid) {
        // delay秒后隐藏
        [hud hideAnimated:YES afterDelay:delay];
        // 隐藏的时候从父控件中移除
        hud.removeFromSuperViewOnHide = YES;
    }
}

#pragma mark - 文字提示
+(void)showInView:(UIView *)view tip:(NSString *)tip autoHid:(BOOL)autoHid {
    [self showInView:view iconName:nil tip:tip mode:MBProgressHUDModeText autoHid:autoHid completionBlock:nil];
}

+(void)showInView:(UIView *)view tip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    [self showInView:view tip:tip mode:MBProgressHUDModeText autoHid:autoHid completionBlock:completionBlock];
}

#pragma mark - mode+文字提示
+(void)showInView:(UIView *)view tip:(NSString *)tip mode:(MBProgressHUDMode)mode autoHid:(BOOL)autoHid {
    [self showInView:view iconName:nil tip:tip mode:mode autoHid:autoHid completionBlock:nil];
}

+(void)showInView:(UIView *)view tip:(NSString *)tip mode:(MBProgressHUDMode)mode autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    [self showInView:view iconName:nil tip:tip mode:mode autoHid:autoHid completionBlock:completionBlock];
}

#pragma mark - 成功提示
+(void)showInView:(UIView *)view successTip:(NSString *)tip autoHid:(BOOL)autoHid {
    [self showInView:view iconName:@"success" tip:tip mode:MBProgressHUDModeCustomView autoHid:autoHid completionBlock:nil];
}

+(void)showInView:(UIView *)view successTip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    [self showInView:view iconName:@"success" tip:tip mode:MBProgressHUDModeCustomView autoHid:autoHid completionBlock:completionBlock];
}

#pragma mark - 错误提示
+(void)showInView:(UIView *)view errorTip:(NSString *)tip autoHid:(BOOL)autoHid {
    [self showInView:view iconName:@"error" tip:tip mode:MBProgressHUDModeCustomView autoHid:autoHid completionBlock:nil];
}

+(void)showInView:(UIView *)view errorTip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock {
    [self showInView:view iconName:@"error" tip:tip mode:MBProgressHUDModeCustomView autoHid:autoHid completionBlock:completionBlock];
}

#pragma mark - 带按钮的提示
+(void)showInView:(UIView *)view title:(NSString *)title tip:(NSString *)tip mode:(MBProgressHUDMode)mode target:(id)targrt action:(SEL)action {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = mode;
        
    hud.label.text = tip;
    
    // Configure a cancel button.
    [hud.button setTitle:NSLocalizedString(title, @"HUD cancel button title") forState:UIControlStateNormal];
    [hud.button addTarget:targrt action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 注意：请在action方法中移除MBProgressHUD (在action中添加这句代码：[MBProgressHUD hideHUDForView:self.view animated:YES];)
}

@end
