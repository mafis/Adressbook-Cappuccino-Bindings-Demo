/*
 * AppController.j
 * AdressBook
 *
 * Created by You on June 2, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "Model/Group.j"
@import "Model/Person.j"


@implementation AppController : CPObject
{
    CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
	CPMutableArray groups @accessors;
	BOOL editModus @accessors;
}

-(id)init
{
	[super init];
	
	groups = [[CPMutableArray alloc] init];
	
	var group = [[Group alloc] initWithTitle:@"All"];
	[groups addObject:group];
	
	editModus = NO;
	
	return self;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{
		
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
}

-(@action)changeEditModus:(id)sender
{
	var shouldEdit = [CPNumber numberWithBool:!editModus];
	[self setValue:shouldEdit forKey:@"editModus"];
}

@end
