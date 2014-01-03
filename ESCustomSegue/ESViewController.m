//
//  ESViewController.m
//  ESCustomSegue
//
//  Created by Enamel Systems on 2014/01/02.
//  Copyright (c) 2014 Enamel Systems. All rights reserved.
//

#import "ESViewController.h"
#import "PrevFlipSegue.h"

@interface ESViewController ()

@end

@implementation ESViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToTop:(UIStoryboardSegue *)segue
{
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier
{
    return [[PrevFlipSegue alloc] initWithIdentifier:identifier source:fromViewController destination:toViewController];
}

@end
