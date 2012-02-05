//
//  UsingActionSheetViewController.h
//  UsingActionSheet
//
//  Created by Raja on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UsingActionSheetViewController : UIViewController <UIActionSheetDelegate>{

    IBOutlet UITextField *textField;
    
}

@property (nonatomic, retain) UITextField *textField;

- (IBAction) showActionSheet;
@end

