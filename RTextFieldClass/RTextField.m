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

-(void)setMaxLength:(int)maxLength{
    _maxLength = maxLength;
}

-(void)setMinLength:(int)minLength{
    _minLength = minLength;
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

@end
