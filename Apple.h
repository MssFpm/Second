//
//  Apple.h
//  Second
//
//  Created by Maxim on 11/21/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Hedgehog, Tree;

@interface Apple : NSManagedObject

@property (nonatomic, retain) NSNumber * weight;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSNumber * state;
@property (nonatomic, retain) Hedgehog *hedgehog;
@property (nonatomic, retain) Tree *tree;

@end
