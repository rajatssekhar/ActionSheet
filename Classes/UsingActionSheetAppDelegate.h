//
//  UsingActionSheetAppDelegate.h
//  UsingActionSheet
//
//  Created by Raja on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UsingActionSheetViewController;

@interface UsingActionSheetAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UsingActionSheetViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UsingActionSheetViewController *viewController;

@end

