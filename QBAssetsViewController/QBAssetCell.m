//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"

#import "UIView+Helpers.h"

@implementation QBAssetCell

- (instancetype)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		self.imageView = [UIImageView new];
		self.imageView.clipsToBounds = YES;
		self.imageView.contentMode = UIViewContentModeScaleAspectFill;
		[self.contentView addSubview:self.imageView];
		[self.imageView pinToEdgesOfSuperview];
		
		self.videoIndicatorView = [QBVideoIndicatorView new];
		[self.contentView addSubview:self.videoIndicatorView];
		[self.videoIndicatorView pinToEdgesOfSuperview];
		
		self.overlayView = [UIView new];
		self.overlayView.backgroundColor = [UIColor colorWithRed:34/255.0 green:42/255.0 blue:47/255.0 alpha:0.7];
		self.overlayView.hidden = YES;
		[self.contentView addSubview:self.overlayView];
		[self.overlayView pinToEdgesOfSuperview];
		
		UIImageView *checkmarkImageView = [UIImageView new];
		checkmarkImageView.image = [UIImage imageNamed:@"checkmark-medium"];
		[self.overlayView addSubview:checkmarkImageView];

		NSLayoutConstraint *checkmarkImageViewCenterXConstraint = [NSLayoutConstraint constraintWithItem:checkmarkImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:checkmarkImageView.superview attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
		NSLayoutConstraint *checkmarkImageViewCenterYConstraint = [NSLayoutConstraint constraintWithItem:checkmarkImageView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:checkmarkImageView.superview attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];

		checkmarkImageView.translatesAutoresizingMaskIntoConstraints = NO;
		[checkmarkImageView.superview addConstraints:@[checkmarkImageViewCenterXConstraint, checkmarkImageViewCenterYConstraint]];
	}
	
	return self;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
	
	self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
}

@end
