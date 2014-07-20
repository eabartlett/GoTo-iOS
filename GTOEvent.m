//
//  GTOEvent.m
//  GoTo
//
//  Created by Alexander on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import "GTOEvent.h"

@interface GTOEvent()

@property (readwrite, nonatomic) NSString *channel;
@property (readwrite, nonatomic) NSString *description;
@property (readwrite, nonatomic) NSString *location;
@property (readwrite, nonatomic) NSDate *createdDate;
@property (readwrite, nonatomic) GTOUser *user;

@end

@implementation GTOEvent

- (instancetype) initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _channel = dict[@"channel"];
        _description = dict[@"description"];
        _location = dict[@"description"];
        _createdDate = dict[@"date"];
        _user = dict[@"user"];
    }
    return self;
}

- (void) sendEvent
{
    
}



@end
