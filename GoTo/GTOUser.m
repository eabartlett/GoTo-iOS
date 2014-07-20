//
//  GTOUser.m
//  GoTo
//
//  Created by Alexander on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import "GTOUser.h"

@implementation GTOUser

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _username = dict[@"username"];
        _password = dict[@"password"];
        _firstname = dict[@"firstname"];
        _lastname = dict[@"lastname"];
    }
    
    return self;
}

- (void)login
{
    
}

- (void)inviteFriends:(NSArray *)friends group:(NSString *)name
{
    
}

- (void)createGroup:(NSString *)name
{
    
}

- (void)deleteGroup:(NSString *)name
{
    
}

- (void)leaveGroup:(NSString *)name
{
    
}

- (void)sendGoTo:(NSString *)message time:(NSDate *)time
{
    
}

@end
