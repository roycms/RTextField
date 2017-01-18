
# RTextField
限制输入字符的UITextField

## import file 
```
#import "RTextField.h"
```

## use 
```
 RTextField *textField = [[RTextField alloc]init];
 textField.maxLength = 3; //限定最大的可输入的长度
 textField.verifyModel = PhoneNumber; // 输入框类型 Email, PhoneNumber, MobelNumber, Url,NomalString, MobileNumberOrPhoneNumber
```

## TODO 
* 返回输入的字数统计
* 正则表达式验证输入返回结果
* 多行文本默认占位文字提示

## 参考
* http://www.jianshu.com/p/2d1c06f2dfa4
