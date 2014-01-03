//
//  PrevFlipSegue.m
//  ESCustomSegue
//
//  Created by Enamel Systems on 2014/01/03.
//  Copyright (c) 2014 Enamel Systems. All rights reserved.
//

#import "PrevFlipSegue.h"

@implementation PrevFlipSegue

- (void) perform {
    UIViewController *sourceViewController = (UIViewController *)self.sourceViewController;
    UIViewController *destinationViewController = (UIViewController *)self.destinationViewController;
    
    [UIView transitionWithView:sourceViewController.view
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        [sourceViewController.view addSubview:destinationViewController.view];
                    }
                    completion:^(BOOL finished){
                        [sourceViewController dismissViewControllerAnimated:NO completion:nil];
                    }];
}

@end
