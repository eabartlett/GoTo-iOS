//
//  GTOUtil.h
//  GoTo
//
//  Created by Alexander on 7/20/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GTOUtil : NSObject

@property (nonatomic, strong) NSMutableArray *users;
@property (nonatomic, strong) NSMutableArray *groups;
@property (weak) id utilDelegate;

/** Fetch the users from the database. */
- (NSArray *)getUsers:(NSString *)username;

/** Fetch the groups from the database. */
- (NSArray *)getGroups:(NSString *)username;

@end
