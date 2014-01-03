//
//  NextFlipSegue.m
//  ESCustomSegue
//
//  Created by Enamel Systems on 2014/01/02.
//  Copyright (c) 2014 Enamel Systems. All rights reserved.
//

#import "NextFlipSegue.h"

@implementation NextFlipSegue

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
                        [sourceViewController presentViewController:destinationViewController animated:NO completion:nil];
                    }];
}

@end
