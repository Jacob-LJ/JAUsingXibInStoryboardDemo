//
//  UIView+Inspectable.m
//  JAUsingXibInStoryboardDemo
//
//  Created by Jacob_Liang on 2017/9/3.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import "UIView+Inspectable.h"

@implementation UIView (Inspectable)


- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth{
    return self.layer.borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

- (CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setMasksToBounds:(BOOL)masksToBounds {
    self.layer.masksToBounds = YES;
}

- (BOOL)masksToBounds {
    return self.layer.masksToBounds;
}


@end
