//
//  SimulationView.h
//  Second
//
//  Created by Maxim on 11/18/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimulationView : UIView {
    int xLines;
	int yLines;
	float xDelta;
	float yDelta;
    float width;
    float height;
	NSMutableArray* cells;
	CGImageRef treeMaskRef;
	CGRect cgBounds;
}

- (void)setupDrawConfiguration: (CGContextRef)context;
- (void) drawGrid: (CGContextRef)context;

@property int xLines;
@property int yLines;
@property float xDelta;
@property float yDelta;
@property float width;
@property float height;
@property (assign) NSMutableArray* cells;
@property CGImageRef treeMaskRef;
@property CGRect cgBounds;


@end
