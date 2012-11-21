//
//  SimulationView.m
//  Second
//
//  Created by Maxim on 11/18/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import "SimulationView.h"

@implementation SimulationView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"INIT");
    }
    return self;
}

- (void) setupDrawConfiguration: (CGContextRef)context {
    NSLog(@"Setup");
	xLines = 10;
	yLines = 8;

    CGContextSetLineWidth(context, 1.0);
    CGContextStrokeRect(context, cgBounds);
	cgBounds = [self bounds];
	width = cgBounds.size.width;
	height = cgBounds.size.height;
	xDelta = width / xLines;
	yDelta = height / yLines;
}

- (void) drawGrid: (CGContextRef)context {
    int i;
	for (i = 0; i < xLines; i++) {
        NSLog(@"DRAW%d", i);
		CGContextMoveToPoint(context, i * xDelta, height + 100);
		CGContextAddLineToPoint(context, i * xDelta, 0);
	}
    
	for (i = 0; i < yLines; i++) {
        NSLog(@"DRAW%d", i);
		CGContextMoveToPoint(context, 0, i * yDelta);
		CGContextAddLineToPoint(context, width, i * yDelta);
	}
}

- (void)drawRect:(CGRect)rect {
    
	CGContextRef context = UIGraphicsGetCurrentContext();
    [self setupDrawConfiguration: context];
    [self drawGrid:context];
	//	for (i = 0; i < xLines; i++) {
//		int j;
//		NSMutableArray *inner = [cells objectAtIndex:i];
//		for (j = 0; j < yLines; j++) {
//			Cell* cell = [inner objectAtIndex:j];
//			Tree* tree = cell.tree;
//			if (tree != NULL) {
//				NSLog(@"x: %d, y: %d", tree.xCoord, tree.yCoord);
//				CGContextDrawImage(context, CGRectMake(xDelta * tree.xCoord, yDelta * tree.yCoord, 48, 45), treeMaskRef);
//			}
//		}
//	}
	
//    
//	
	CGContextSetLineWidth(context, 0.5);
	CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
	CGContextStrokePath(context);
    [self setNeedsDisplay];
}

- (void)windowDidResize:(NSNotification *)notification {
	NSLog(@"resize");
    
}
@end
