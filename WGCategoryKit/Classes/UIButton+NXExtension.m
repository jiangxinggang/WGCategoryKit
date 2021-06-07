//
//  UIButton+NXExtension.m
//  分类深化
//
//  Created by jxg on 2019/6/29.
//  Copyright © 2019年 jxg. All rights reserved.
//

#import "UIButton+NXExtension.h"

@implementation UIButton (NXExtension)

/**
 重写添加target方法 不需要传事件类型
 
 @param target 目标对象
 @param action 事件
 */
- (void)addTarget:(id)target action:(SEL)action
{
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

/**
 重写添加文字方法 不需要传类型
 
 @param title 文字
 */
- (void)setTitle:(NSString *)title
{
    [self setTitle:title forState:UIControlStateNormal];
}

/**
 重写文字颜色方法
 
 @param color 颜色
 */
- (void)setTitleColor:(UIColor *)color
{
    [self setTitleColor:color forState:UIControlStateNormal];
}

/**
 重写添加图片方法
 
 @param image 图片
 */
- (void)setImage:(UIImage *)image
{
    [self setImage:image forState:UIControlStateNormal];
}

/**
 重写添加背景图方法
 
 @param image 图片
 */
- (void)setBackgroundImage:(UIImage *)image
{
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

/**
 重写设置阴影颜色方法
 
 @param color 颜色
 */
- (void)setTitleShadowColor:(UIColor *)color
{
    [self setTitleShadowColor:color forState:UIControlStateNormal];
}

/**
 重写自动触发方法
 */
- (void)sendActionsForControlEvents
{
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}

/**
 创建带title的button block回调事件
 
 @param frame frame
 @param title 标题
 @param titleColor 颜色
 @param font 字体大小
 @param actionBlock 事件回调
 @return 返回button实例
 */
+ (UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font action:(ActionBlock)actionBlock
{
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title];
    [btn setTitleColor:titleColor];
    btn.titleLabel.font = font;
    [btn handleControlEvent:UIControlEventTouchUpInside withBlock:actionBlock];
    return btn;
}

/**
 创建带image的button block回调事件
 
 @param frame frame
 @param image 图片
 @param actionBlock 事件回调
 @return 返回button实例
 */
+ (UIButton *)createButtonWithFrame:(CGRect)frame image:(UIImage *)image action:(ActionBlock)actionBlock
{
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setImage:image];
    [btn handleControlEvent:UIControlEventTouchUpInside withBlock:actionBlock];
    return btn;
}

/**
 创建带title的button
 
 @param frame frame
 @param title 标题
 @param titleColor 颜色
 @param font 字体大小
 @param target target
 @param targetAction 事件回调
 @return 返回button实例
 */
+ (UIButton *)createButtonWithFrame:(CGRect)frame
                              title:(NSString *)title
                         titleColor:(UIColor *)titleColor
                               font:(UIFont *)font
                             target:(id)target
                       targetAction:(SEL)targetAction
{
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title];
    [btn setTitleColor:titleColor];
    btn.titleLabel.font = font;
    [btn addTarget:target action:targetAction];
    return btn;
}

/**
 创建带image的button
 
 @param frame frame
 @param image 图片
 @param target target
 @param targetAction 事件回调
 @return 返回button实例
 */
+ (UIButton *)createButtonWithFrame:(CGRect)frame
                              image:(UIImage *)image
                             target:(id)target
                       targetAction:(SEL)targetAction
{
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setImage:image];
    [btn addTarget:target action:targetAction];
    return btn;
}

@end
