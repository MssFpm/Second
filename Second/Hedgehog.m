//
//  Hedgehog.m
//  Second
//
//  Created by Maxim on 11/21/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import "Hedgehog.h"


@implementation Hedgehog

@dynamic age;
@dynamic speed;
@dynamic apples;
@synthesize xCoord;
@synthesize yCoord;

- (void)subscribeForNotifications {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(goToApple:) name:@"AppleFall" object:nil];
}
- (void) goToApple: (NSNotification *) notification {
    NSLog(@"Notification  %@", notification);
}


@end
