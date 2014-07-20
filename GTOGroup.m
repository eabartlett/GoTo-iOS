//
//  GTOGroup.m
//  GoTo
//
//  Created by Alexander on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import "GTOGroup.h"

@implementation GTOGroup

- (instancetype) initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        _id = dict[@"id"];
        _channel = dict[@"channel"];
    }
    return self;
}

@end
