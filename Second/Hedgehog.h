//
//  Hedgehog.h
//  Second
//
//  Created by Maxim on 11/21/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Hedgehog : NSManagedObject {
    int xCoord;
    int yCoord;
}

- (void) subscribeForFallenApplesNotifications;
- (void) goToApple: (NSNotification *) notification;

@property int xCoord;
@property int yCoord;
@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSNumber * speed;
@property (nonatomic, retain) NSSet *apples;
@end

@interface Hedgehog (CoreDataGeneratedAccessors)

- (void)addApplesObject:(NSManagedObject *)value;
- (void)removeApplesObject:(NSManagedObject *)value;
- (void)addApples:(NSSet *)values;
- (void)removeApples:(NSSet *)values;

@end
