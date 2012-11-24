//
//  Cell.h
//  Second
//
//  Created by Maxim on 11/18/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"

@interface Cell : NSObject {
	Tree* tree;
	NSObject* hedgehog;
	NSObject* apple;
}

@property (assign) Tree* tree;
@property (assign) NSObject* hedgehog;
@property (assign) NSObject* apple;


@end
