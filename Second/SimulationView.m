//
//  SimulationView.m
//  Second
//
//  Created by Maxim on 11/18/12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import "SimulationView.h"
#import "Tree.h"
#import "Cell.h"
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
	xLines = 7;
	yLines = 7;

    CGContextSetLineWidth(context, 1.0);
    CGContextStrokeRect(context, cgBounds);
	cgBounds = [self bounds];
	width = cgBounds.size.width;
	height = cgBounds.size.height;
	xDelta = width / xLines;
	yDelta = height / yLines;
    cells = [[NSMutableArray alloc] initWithCapacity:xLines];
    NSLog(@"%d", xLines);	
	int i;
	for (i = 0; i < xLines; i++) {
		NSMutableArray *inner = [[NSMutableArray alloc] initWithCapacity:yLines];
		int j;
		for (j = 0; j < yLines; j++) {
			Cell *cell = [[Cell alloc] init];
			[inner addObject:cell];
			int x = arc4random() % xLines;
			if (x == 3) {
				Tree *tree = [[Tree alloc] initWithCoordX: i andCoordY: j];
				[cell setTree:tree];
				[inner addObject:cell];
			}
			
		}
		[cells addObject:inner];
	}
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

- (void) drawTrees: (CGContextRef)context {
    UIImage *image = [UIImage imageNamed:@"rsz_tree-icon.png"];

    int i;
	for (i = 0; i < xLines; i++) {
		int j;
		NSMutableArray *inner = [cells objectAtIndex:i];
		for (j = 0; j < yLines; j++) {
			Cell* cell = [inner objectAtIndex:j];
			Tree* tree = cell.tree;
			if (tree != NULL) {
				NSLog(@"x: %d, y: %d", tree.xCoord, tree.yCoord);
                CGPoint imagePoint = CGPointMake(xDelta * tree.xCoord, yDelta * tree.yCoord);
                [image drawAtPoint:imagePoint];
		}
		}
	}

}

- (void)drawRect:(CGRect)rect {
    
	CGContextRef context = UIGraphicsGetCurrentContext();
    [self setupDrawConfiguration: context];
    [self drawGrid:context];
    [self drawTrees:context];
	CGContextSetLineWidth(context, 0.5);
	CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
	CGContextStrokePath(context);
}

- (void)windowDidResize:(NSNotification *)notification {
	NSLog(@"resize");
    
}
@end
