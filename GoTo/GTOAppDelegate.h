//
//  GTOAppDelegate.h
//  GoTo
//
//  Created by Erik Bartlett on 7/19/14.
//  Copyright (c) 2014 Erik Bartlett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTOAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
