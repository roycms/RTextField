
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
```

## TODO 
* 返回输入的字数统计
* 正则表达式验证输入返回结果
* 多行文本默认占位文字提示
