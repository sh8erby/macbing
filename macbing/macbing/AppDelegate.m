//
//  AppDelegate.m
//  macbing
//
//  Created by Arnold Li on 2/21/14.
//  Copyright (c) 2014 Arnold Li. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

//random number generator
//timer
//loop

- (IBAction)onepoint:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL: [NSURL URLWithString:@"https://www.bing.com"]];
}

- (IBAction)fivepoints:(id)sender {
}

- (IBAction)fifteenpoints:(id)sender {
}

- (IBAction)thirtypoints:(id)sender {
}

@end
