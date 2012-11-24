//
//  Tree.m
//  Second
//
//  Created by Maxim on 11/21/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import "Tree.h"


@implementation Tree

@dynamic age;
@dynamic avgWeight;
@dynamic timeOfRipening;
@dynamic probabilityOfDecay;
@dynamic type;
@dynamic probabilityOfWorminess;
@dynamic apples;
@synthesize xCoord;
@synthesize yCoord;

- (id) initWithCoordX: (int)x andCoordY: (int)y {
	self = [super init];
    if (self)  {
		self.xCoord = x;
		self.yCoord = y;
    }
    return self;
   
}


@end
