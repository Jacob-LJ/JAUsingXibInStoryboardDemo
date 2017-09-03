//
//  UIView+Inspectable.h
//  JAUsingXibInStoryboardDemo
//
//  Created by Jacob_Liang on 2017/9/3.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Inspectable)

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, assign) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable BOOL masksToBounds;

@end
