//
//  QBVideoIndicatorView.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/04.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBVideoIndicatorView.h"

#import "GradientView.h"
#import "UIView+Helpers.h"

@interface QBVideoIndicatorView ()

@property (nonatomic) GradientView *gradientView;

@end

@implementation QBVideoIndicatorView

- (instancetype)init {
	if (self = [super init]) {
		
		self.gradientView = [GradientView new];
		self.gradientView.inverse = YES;
		self.gradientView.gradientFraction = 0.7;

		self.gradientView.startColor = [UIColor colorWithRed:34/255.0 green:42/255.0 blue:47/255.0 alpha:0.7];
		[self addSubview:self.gradientView];
		[self.gradientView pinToEdgesOfSuperview];
		
		self.timeLabel = [UILabel new];
		self.timeLabel.textAlignment = NSTextAlignmentRight;
		self.timeLabel.font = [UIFont systemFontOfSize:13];
		self.timeLabel.textColor = [UIColor whiteColor];
		[self addSubview:self.timeLabel];

		NSLayoutConstraint *timeLabelLeftConstraint = [NSLayoutConstraint constraintWithItem:self.timeLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.timeLabel.superview attribute:NSLayoutAttributeLeft multiplier:1 constant:5];
		NSLayoutConstraint *timeLabelBottomConstraint = [NSLayoutConstraint constraintWithItem:self.timeLabel attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.timeLabel.superview attribute:NSLayoutAttributeBottom multiplier:1 constant:-2];
		NSLayoutConstraint *timeLabelRightConstraint = [NSLayoutConstraint constraintWithItem:self.timeLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.timeLabel.superview attribute:NSLayoutAttributeRight multiplier:1 constant:-5];

		self.timeLabel.translatesAutoresizingMaskIntoConstraints = NO;
		[self.timeLabel.superview addConstraints:@[timeLabelLeftConstraint, timeLabelBottomConstraint, timeLabelRightConstraint]];
		
		self.videoIcon = [QBVideoIconView new];
		[self addSubview:self.videoIcon];

		NSLayoutConstraint *videoIconLeftConstraint = [NSLayoutConstraint constraintWithItem:self.videoIcon attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.videoIcon.superview attribute:NSLayoutAttributeLeft multiplier:1 constant:5];
		NSLayoutConstraint *videoIconCenterYConstraint = [NSLayoutConstraint constraintWithItem:self.videoIcon attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.timeLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
		NSLayoutConstraint *videoIconWidthConstraint = [NSLayoutConstraint constraintWithItem:self.videoIcon attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:16];
		NSLayoutConstraint *videoIconHeightConstraint = [NSLayoutConstraint constraintWithItem:self.videoIcon attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:9];

		self.videoIcon.translatesAutoresizingMaskIntoConstraints = NO;
		[self.videoIcon.superview addConstraints:@[videoIconLeftConstraint, videoIconCenterYConstraint, videoIconWidthConstraint, videoIconHeightConstraint]];
		
		self.slomoIcon = [QBSlomoIconView new];
		[self addSubview:self.slomoIcon];

		NSLayoutConstraint *slomoIconLeftConstraint = [NSLayoutConstraint constraintWithItem:self.slomoIcon attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.slomoIcon.superview attribute:NSLayoutAttributeLeft multiplier:1 constant:5];
		NSLayoutConstraint *slomoIconCenterYConstraint = [NSLayoutConstraint constraintWithItem:self.slomoIcon attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.timeLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
		NSLayoutConstraint *slomoIconWidthConstraint = [NSLayoutConstraint constraintWithItem:self.slomoIcon attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:12];
		NSLayoutConstraint *slomoIconHeightConstraint = [NSLayoutConstraint constraintWithItem:self.slomoIcon attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:12];

		self.slomoIcon.translatesAutoresizingMaskIntoConstraints = NO;
		[self.slomoIcon.superview addConstraints:@[slomoIconLeftConstraint, slomoIconCenterYConstraint, slomoIconWidthConstraint, slomoIconHeightConstraint]];
	}
	
	return self;
}

@end
