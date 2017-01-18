//
//  RTextField.h
//  RTextField
//
//  Created by roycms on 2017/1/17.
//  Copyright © 2017年 杜耀辉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+PJR.h"

typedef NS_ENUM(NSInteger,VerifyModel) {
    Email = 0,
    PhoneNumber,
    MobelNumber,
    Url,
    NomalString,
    MobileNumberOrPhoneNumber,
};

@interface RTextField : UITextField <UITextFieldDelegate>
@property (nonatomic, assign) VerifyModel verifyModel;
@property (nonatomic, assign) int maxLength;
@property (nonatomic, copy) void(^noPass)();
@property (nonatomic, copy) void(^pass)();
@end
