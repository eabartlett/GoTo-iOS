//
//  GTOEvent.h
//  GoTo
//
//  Created by Alexander on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PubNub.h"
#import "GTOUser.h"

@interface GTOEvent : NSObject

@property (readonly, nonatomic) NSString *channel;
@property (readonly, nonatomic) NSString *description;
@property (readonly, nonatomic) NSString *location;
@property (readonly, nonatomic) NSDate *createdDate;
@property (readonly, nonatomic) GTOUser *user;

- (instancetype) initWithDictionary:(NSDictionary*)dict;

- (void) sendEvent;

@end
