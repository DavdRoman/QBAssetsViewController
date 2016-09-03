//
//  GradientView.h
//  
//
//  Created by David Román on 9/7/15.
//
//

#import <UIKit/UIKit.h>

@interface GradientView : UIView

@property (nonatomic) BOOL inverse;
@property (nonatomic) CGFloat gradientFraction;
@property (nonatomic) UIColor *startColor;

@end
