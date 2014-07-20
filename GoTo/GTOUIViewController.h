//
//  GTOUIViewController.h
//  GoTo
//
//  Created by Alexander on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface GTOUIViewController : UIViewController <FBLoginViewDelegate>

@property (weak, nonatomic)   IBOutlet FBLoginView *loginView;
@property (strong, nonatomic) IBOutlet FBProfilePictureView *profilePictureView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *statusLabel;

@end