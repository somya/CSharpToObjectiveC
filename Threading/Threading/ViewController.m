//
//  ViewController.m
//  MemoryManagement
//
//  Created by Somya Jain on 8/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"

@implementation ViewController

- (void)loadView
{
	MainView *mainView = [[MainView alloc] init];
	self.view = mainView;

	[mainView.allocButton addTarget:self action:@selector(runAllocTest)
		forControlEvents:UIControlEventTouchUpInside];
	[mainView release];
}

- (MainView *)mainView
{
	return (MainView *) self.view;
}

- (void)runAllocTest
{

	while ( 1 )
	{
		self.mainView.messageLabel.text =
			[NSString stringWithFormat:@"Alloc Test Complete: %d", ++allocTestRun];

//		@autoreleasepool
//		{

			NSData *data = [[[NSData alloc]
				initWithContentsOfFile:[[NSBundle mainBundle]
					pathForResource:@"test" ofType:@"img"]]
				autorelease];

//		data.retain;

//		[data release];

			NSLog( @"[%i] ", allocTestRun );
//		}

		if ( allocTestRun == INT_MAX )
		{
			break;
		}
	}
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	NSLog( @"%s", sel_getName( _cmd ) );
}


@end
