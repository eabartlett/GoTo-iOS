//
//  GTOUtil.m
//  GoTo
//
//  Created by Alexander on 7/20/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import "GTOUtil.h"

@protocol GTOUtilDelegate <NSObject>

- (void)usersUpdated;

- (void)groupsUpdated;

@end

@implementation GTOUtil

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _users = [[NSMutableArray alloc] init];
        _groups = [[NSMutableArray alloc] init];
    }
    
    return self;
}

/** Fetch the data (abstraction). */
- (void)getData:(NSString *)http case:(int)code
{
    NSString *urlString = @"http://";
    urlString = [urlString stringByAppendingString:http];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSMutableURLRequest *request = [NSURLRequest requestWithURL:url];
    [request addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSURLSessionConfiguration* config = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession* session = [NSURLSession sessionWithConfiguration:config];
    
    NSURLSessionDataTask* dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error == nil) {
            NSArray *responseArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            NSMutableArray *collection;
            switch (code) {
                case 0:
                    [self populateUsers:responseArray];
                case 1:
                    [self populateGroups:responseArray];
            }
        }
    }];
    
    [dataTask resume];
}

/** Fetch the users from the database. */
- (void)getUsers:(NSString *)username
{
    [self getData:username case:0];
}

/** Fetch the groups from the database. */
- (void)getGroups:(NSString *)username
{
    [self getData:username case:1];
}

/** Create User. */
- (void)createUser:(NSString *)username
{
    
}

/** Create Group. */
- (void)createGroup:(NSString *)groupName
{
    
}

/** Add User to Group */
- (void)addUser:(NSString *)username group:(NSString *)groupName
{
    
}

/** Delete User from Group */
- (void)deleteUser:(NSString *)username group:(NSString *)groupName
{
    
}


/** Load all of the users into an array. */
- (void)populateUsers:(NSArray *)users
{
    NSMutableArray *array = nil;
    for (NSString *user in users) {
        [array addObject:user];
    }
    _users = array;
    
    [self.utilDelegate usersUpdated];
}

/** Load the groups for a particular user into an array. */
- (void)populateGroups:(NSArray *)groups
{
    NSMutableArray *array = nil;
    for (NSString *group in groups) {
        [array addObject:group];
    }
    _groups = array;
    
    [self.utilDelegate groupsUpdated];
}


@end
