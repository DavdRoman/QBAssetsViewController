//
//  QBAssetCell.h
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "QBVideoIndicatorView.h"

@interface QBAssetCell : UICollectionViewCell

@property (nonatomic) UIView *overlayView;
@property (nonatomic) QBVideoIndicatorView *videoIndicatorView;
@property (nonatomic) UIImageView *imageView;

@property (nonatomic) BOOL showsOverlayViewWhenSelected;

@end
