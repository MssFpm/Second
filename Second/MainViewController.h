//
//  MainViewController.h
//  Second
//
//  Created by Pavel Astraukh on 17.11.12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIButton *staticsButton;
- (IBAction)goToStatistics:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *simulationButton;
- (IBAction)goToSimulation:(id)sender;

@end
