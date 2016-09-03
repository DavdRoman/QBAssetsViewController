//
//  GradientView.m
//  
//
//  Created by David Román on 9/7/15.
//
//

#import "GradientView.h"

@implementation GradientView

- (instancetype)init {
	if (self = [super init]) {
		self.backgroundColor = [UIColor clearColor];
		self.userInteractionEnabled = NO;
		self.startColor = [UIColor blackColor];
	}
	
	return self;
}

- (void)drawRect:(CGRect)rect {
	CGContextRef ref = UIGraphicsGetCurrentContext();
	
	UIColor *startColor = self.startColor;
	UIColor *endColor = [self.startColor colorWithAlphaComponent:0];
	
	CGFloat locations[2] = {0, 1};
	CFArrayRef colors = (__bridge CFArrayRef)[NSArray arrayWithObjects:(id)startColor.CGColor, (id)endColor.CGColor, nil];
	
	CGColorSpaceRef colorSpc = CGColorSpaceCreateDeviceRGB();
	CGGradientRef gradient = CGGradientCreateWithColors(colorSpc, colors, locations);
	
	if (self.inverse) {
		CGContextDrawLinearGradient(ref, gradient, CGPointMake(0, self.frame.size.height), CGPointMake(0, self.frame.size.height-self.frame.size.height*self.gradientFraction), kCGGradientDrawsAfterEndLocation);
	} else {
		CGContextDrawLinearGradient(ref, gradient, CGPointMake(0, 0), CGPointMake(0, self.frame.size.height*self.gradientFraction), kCGGradientDrawsAfterEndLocation);
	}
	
	CGColorSpaceRelease(colorSpc);
	CGGradientRelease(gradient);
}

@end
