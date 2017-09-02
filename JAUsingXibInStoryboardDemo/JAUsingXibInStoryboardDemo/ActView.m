//
//  ActView.m
//  JAUsingXibInStoryboardDemo
//
//  Created by Jacob_Liang on 2017/9/2.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import "ActView.h"

IB_DESIGNABLE
@interface ActView ()

@property (strong, nonatomic) IBInspectable IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *titleLB;

#pragma mark - IBInspectable Property
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat bwidth;
@property (nonatomic, assign) IBInspectable UIColor *bcolor;

@end

@implementation ActView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setUpInitCotentView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUpInitCotentView];
    }
    return self;
}

- (void)setUpInitCotentView {
    
    //
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    self.contentView = [[bundle loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] firstObject];
    [self addSubview:self.contentView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.contentView.frame = self.bounds;
}

#pragma mark - getter & setter
- (void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius  = _cornerRadius;
    self.layer.masksToBounds = YES;
}

- (void)setBcolor:(UIColor *)bcolor{
    _bcolor = bcolor;
    self.layer.borderColor = _bcolor.CGColor;
}

- (void)setBwidth:(CGFloat)bwidth {
    _bwidth = bwidth;
    self.layer.borderWidth = _bwidth;
}

@end
