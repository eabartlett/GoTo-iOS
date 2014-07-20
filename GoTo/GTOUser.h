//
//  GTOUser.h
//  GoTo
//
//  Created by Alexander on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GTOUser : NSObject

@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSString *firstname;
@property (strong, nonatomic) NSString *lastname;


/** Invite friends to a new or existing group. */
- (void) inviteFriends:(NSArray *)friends group:(NSString *)name;

/** Create a group. */
- (void) createGroup:(NSString *)name;

/** Delete a group. */
- (void) deleteGroup:(NSString *)name;

/** Leave a group. */
- (void) leaveGroup:(NSString *)name;

/** Send a GoTo message. */
- (void) sendGoTo:(NSString *)message time:(NSDate *)time;

@end
