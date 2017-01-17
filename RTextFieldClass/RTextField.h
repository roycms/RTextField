//
//  RTextField.h
//  RTextField
//
//  Created by roycms on 2017/1/17.
//  Copyright © 2017年 杜耀辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RTextField : UITextField <UITextFieldDelegate>

@property (nonatomic, assign) int minLength;
@property (nonatomic, assign) int maxLength;

@property (nonatomic, copy) void(^noPass)();
@property (nonatomic, copy) void(^pass)();
@end
