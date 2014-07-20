//
//  GTOGroup.h
//  GoTo
//
//  Created by Alexander on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GTOGroup : NSObject

@property (nonatomic, readonly) NSNumber *id;
@property (nonatomic, readonly) NSString *channel;

- (instancetype) initWithDictionary:(NSDictionary *)dict;
@end
