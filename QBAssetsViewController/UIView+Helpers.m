//
//  UIView+Helpers.m
//  Meridian
//
//  Created by David Román Aguirre on 18/12/15.
//  Copyright © 2015 David Román Aguirre. All rights reserved.
//

#import "UIView+Helpers.h"

@implementation UIView (Helpers)

- (void)pinToEdgesOfSuperview {
	NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeTop multiplier:1 constant:0];
	NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
	NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
	NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeRight multiplier:1 constant:0];

	self.translatesAutoresizingMaskIntoConstraints = NO;
	[self.superview addConstraints:@[topConstraint, leftConstraint, bottomConstraint, rightConstraint]];
}

@end
