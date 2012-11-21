//
//  MainViewController.m
//  Second
//
//  Created by Pavel Astraukh on 17.11.12.
//  Copyright (c) 2012 Pavel Astraukh. All rights reserved.
//

#import "MainViewController.h"
#import "SimulationViewController.h"
#import "StatisticsViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
       
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_staticsButton release];
    [_simulationButton release];
    [super dealloc];
}
- (IBAction)goToStatistics:(id)sender {
    StatisticsViewController *viewController = [[StatisticsViewController alloc] initWithNibName:@"StatisticsViewController" bundle:nil];
    [self.navigationController pushViewController:viewController animated:YES];
    [viewController release];
}
- (IBAction)goToSimulation:(id)sender {
    SimulationViewController *viewController = [[SimulationViewController alloc] initWithNibName:@"SimulationViewController" bundle:nil];
    [self.navigationController pushViewController:viewController animated:YES];
    [viewController release];
}
@end
