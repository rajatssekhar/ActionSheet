//
//  UsingActionSheetViewController.m
//  UsingActionSheet
//
//  Created by Raja on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UsingActionSheetViewController.h"

@implementation UsingActionSheetViewController

@synthesize textField;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {

    [super viewDidLoad];
    //CGRect frame = CGRectMake(10, 20, 300, 20);
	//textField = [[UITextField alloc] initWithFrame:frame];
}

- (IBAction) showActionSheet {
    UIActionSheet *action = [[UIActionSheet alloc]
                             initWithTitle:@"Hello Action Sheet"
                             delegate:self
                             cancelButtonTitle:@"OK"
                             destructiveButtonTitle:@"Delete Message"
                             otherButtonTitles:nil];
    action.delegate = self;
	[action showInView:self.view];
	[action release];
}

- (void) actionSheet: (UIActionSheet *) actionSheet clickedButtonAtIndex: (NSInteger) buttonIndex {

    switch (buttonIndex) {
        case 0:
            textField.text = [NSString stringWithFormat:@"Delete Button clicked"];
            break;
        case 1:
            textField.text = [NSString stringWithFormat:@"OK Button clicked"];
            break;
        default:
            break;
    }
	
    
}
																		   


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
