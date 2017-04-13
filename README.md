# MBProgressHUD-Helper
基于MBProgressHUD的二次封装，一行代码调用，方便快捷，易于维护。

## 说明
```
// 只有文字提示
+(void)showInView:(UIView *)view tip:(NSString *)tip autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view tip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// mode+文字提示
+(void)showInView:(UIView *)view tip:(NSString *)tip mode:(MBProgressHUDMode)mode autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view tip:(NSString *)tip mode:(MBProgressHUDMode)mode autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// 成功提示
+(void)showInView:(UIView *)view successTip:(NSString *)tip autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view successTip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// 错误提示
+(void)showInView:(UIView *)view errorTip:(NSString *)tip autoHid:(BOOL)autoHid;
+(void)showInView:(UIView *)view errorTip:(NSString *)tip autoHid:(BOOL)autoHid completionBlock:(MBProgressHUDCompletionBlock)completionBlock;

// 带按钮的提示
+(void)showInView:(UIView *)view title:(NSString *)title tip:(NSString *)tip mode:(MBProgressHUDMode)mode target:(id)targrt action:(SEL)action;

```

## 使用
直接下载这两个文件和MBProgressHUD.bundle，拖入到项目中
```
#import "MBProgressHUD+Helper.h"
```

示例-成功提示
```
[MBProgressHUD showInView:self.view successTip:@"绑定成功" autoHid:YES];
```

示例-带block的错误提示
```
[MBProgressHUD showInView:self.view errorTip:@"网络连接失败，请稍后再试" autoHid:YES completionBlock:^{
      [self.navigationController popViewControllerAnimated:YES];
}];
```

## 联系我
如果您觉得本Demo好用，请为我加星，非常感谢，🙏！&nbsp;如果您有什么疑问/建议，非常欢迎联系我，🙏！

QQ/微信: 852354291&nbsp;&nbsp;&nbsp;&nbsp;Email: 852354291@qq.com

Please Star Me, Follow Me, Thank You!😊
