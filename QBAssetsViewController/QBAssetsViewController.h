//
//  QBAssetsViewController.h
//  QBAssetsViewController
//
//  Created by David Román Aguirre on 03/09/16.
//  Copyright © 2016 David Román Aguirre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Photos/Photos.h>

//! Project version number for QBAssetsViewController.
FOUNDATION_EXPORT double QBAssetsViewControllerVersionNumber;

//! Project version string for QBAssetsViewController.
FOUNDATION_EXPORT const unsigned char QBAssetsViewControllerVersionString[];

@interface QBAssetsViewController : UICollectionViewController

@property (nonatomic) BOOL shouldForceSelection;
@property (nonatomic) PHAssetMediaType mediaType;
@property (nonatomic) NSInteger maximumNumberOfAssets;
@property (nonatomic, nonnull) NSMutableOrderedSet * selectedAssets;

- (instancetype _Nonnull)init NS_DESIGNATED_INITIALIZER;

@end
