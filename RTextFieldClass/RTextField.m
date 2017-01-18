//
//  RTextField.m
//  RTextField
//
//  Created by roycms on 2017/1/17.
//  Copyright © 2017年 杜耀辉. All rights reserved.
//

#import "RTextField.h"

@implementation RTextField


-(instancetype)init{
     self = [super init];
    if(self){
        self.delegate = self;
    }
    return self;
}
- (instancetype)initWithStyle:(VerifyModel)verifyModel{
    self = [super init];
    if(self){
        self.delegate = self;
        _verifyModel = verifyModel;
    }
    return self;
}


-(void)setMaxLength:(int)maxLength{
    _maxLength = maxLength;
}


#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField == self) {
        if (string.length == 0 || _maxLength ==0 ){
            if (self.pass) {
                self.pass();
            }
            return YES;
        }
        NSInteger existedLength = textField.text.length;
        NSInteger selectedLength = range.length;
        NSInteger replaceLength = string.length;
        if (existedLength - selectedLength + replaceLength > _maxLength) {
            if (self.noPass) {
                self.noPass();
            }
            return NO;
        }
    }
    if (self.pass) {
        self.pass();
    }
    
    return YES;
}

- (void)textFieldDidChange:(UITextField *)textField
{
    if (textField == self) {
        if(_maxLength != 0){
            if (textField.text.length > _maxLength) {
                textField.text = [textField.text substringToIndex:_maxLength];
            }
        }
    }
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField == self) {
        
        switch (_verifyModel) {
            case 0:
                if (![textField.text isValidEmail]) {
                    [self warningTip];
                }
                else{
                    [self clearWarningTip];
                }
                break;
            case 1:
                if (![textField.text isVAlidPhoneNumber]) {
                    [self warningTip];
                }
                else{
                    [self clearWarningTip];
                }
                break;
            case 2:
                if (![textField.text isVAlidMobelNumber]) {
                    [self warningTip];
                }
                else{
                    [self clearWarningTip];
                }
                break;
            case 3:
                if (![textField.text isValidUrl]) {
                    [self warningTip];
                }
                else{
                    [self clearWarningTip];
                }
                break;
            case 4:
                if (![textField.text isValidNomalString]) {
                    [self warningTip];
                }
                else{
                    [self clearWarningTip];
                }
                break;
            case 5:
                if (![textField.text isValidMobileNumberOrPhoneNumber]) {
                    [self warningTip];
                }
                else{
                    [self clearWarningTip];
                }
                break;
                
            default:
                break;
        }
    }
}

-(void)warningTip{
    self.backgroundColor = [UIColor redColor];
    self.alpha = 0.6;
}
-(void)clearWarningTip{
    self.backgroundColor = [UIColor clearColor];
}

@end
