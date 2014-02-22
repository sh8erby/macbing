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
//create void function that applies for the button
//insert key strokes to close the tab



//1 pt = 3 searches
//5 pt = 15 searches
//15 pt = 45 searches
//30 pt = 90 searches

- (IBAction)onepoint:(id)sender {
    int a = 3;
    int random_a = 1000;
    char letter_a = 'a';
    loop(a, random_a, letter_a);
}

- (IBAction)fivepoints:(id)sender {
    int b = 15;//15
    int random_b = 2000;
    char letter_b = 'b';
    loop(b,random_b, letter_b);
}

- (IBAction)fifteenpoints:(id)sender {
    int c = 45;//45
    int random_c = 10000;
    char letter_c = 'c';
    loop(c, random_c, letter_c);
}

- (IBAction)thirtypoints:(id)sender {
    int d = 90;//90
    int random_d = 80000;
    char letter_d = 'd';
    loop(d, random_d, letter_d);
}

void loop(int counter, int random, char letter)
{
    for (int i = 0 ; i< counter; i++)
    {
        int mod = arc4random()%2;
        int modi = arc4random()%random;
        NSString *a = @"https://www.bing.com";
        NSString *b = [NSString stringWithFormat:@"%@/search?q=%c%i",a,letter,modi];
        
        [[NSWorkspace sharedWorkspace] openURL: [NSURL URLWithString:b]];
        [NSThread sleepForTimeInterval:1 + mod];
        keys();
    }
    //printf("hello world");
    
}

void keys ()
{
    CGEventSourceRef src = CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef cmdd = CGEventCreateKeyboardEvent(src, 0x38, true);
    CGEventRef cmdu = CGEventCreateKeyboardEvent(src, 0x38, false);
    CGEventRef wd   = CGEventCreateKeyboardEvent(src, 0xD, true);
    CGEventRef wu   = CGEventCreateKeyboardEvent(src, 0xD, false);
    CGEventRef td   = CGEventCreateKeyboardEvent(src, 0x11, true);
    CGEventRef tu   = CGEventCreateKeyboardEvent(src, 0x11, false);
    CGEventRef spcd = CGEventCreateKeyboardEvent(src, 0x31, true);
    CGEventRef spcu = CGEventCreateKeyboardEvent(src, 0x31, false);
    
    CGEventSetFlags(spcd, kCGEventFlagMaskCommand);
    CGEventSetFlags(spcu, kCGEventFlagMaskCommand);
    CGEventSetFlags(wd, kCGEventFlagMaskCommand);
    CGEventSetFlags(wu, kCGEventFlagMaskCommand);
    CGEventSetFlags(td, kCGEventFlagMaskCommand);
    CGEventSetFlags(tu, kCGEventFlagMaskCommand);
    
    CGEventTapLocation loc = kCGHIDEventTap;
    CGEventPost(loc, cmdd);
    CGEventPost(loc, wd);
    CGEventPost(loc, wu);
    CGEventPost(loc, cmdu);
    
    CFRelease(cmdd);
    CFRelease(cmdu);
    CFRelease(wd);
    CFRelease(wu);
    CFRelease(src);
    
}


@end










