//
//  UILabel+NXExtension.m
//  分类深化
//
//  Created by jxg on 2019/6/30.
//  Copyright © 2019年 jxg. All rights reserved.
//

#import "UILabel+NXExtension.h"

@implementation UILabel (NXExtension)

/**
 创建label
 
 @param frame frame
 @param text 文字
 @param textColor 文字颜色
 @param textAlignment 对齐方式
 @param textFont 颜色字体
 @return 返回label实例
 */
+ (UILabel *)createLabelWithFrame:(CGRect)frame
                             text:(NSString *)text
                        textColor:(UIColor *)textColor
                         textFont:(UIFont *)textFont
                    textAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    if (textAlignment) {
        label.textAlignment = textAlignment;
    }
    label.font = textFont;
    
    return label;
}

/**
 创建label
 
 @param frame frame
 @param text 文字
 @param textColor 文字颜色
 @param textAlignment 对齐方式
 @param textFont 颜色字体
 @param backgroundColor 背景颜色
 @return 返回label实例
 */
+ (UILabel *)createLabelWithFrame:(CGRect)frame
                             text:(NSString *)text
                        textColor:(UIColor *)textColor
                         textFont:(UIFont *)textFont
                    textAlignment:(NSTextAlignment)textAlignment
                  backgroundColor:(UIColor *)backgroundColor
{
    UILabel *label = [UILabel createLabelWithFrame:frame text:text textColor:textColor textFont:textFont textAlignment:textAlignment];
    label.backgroundColor = backgroundColor;
    
    return label;
}

@end
