//
//  AppDelegate.h
//  macbing
//
//  Created by Arnold Li on 2/21/14.
//  Copyright (c) 2014 Arnold Li. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

-(IBAction)onepoint:(id)sender;
-(IBAction)fivepoints:(id)sender;
-(IBAction)fifteenpoints:(id)sender;
-(IBAction)thirtypoints:(id)sender;


@end
