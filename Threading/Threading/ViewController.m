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

	[mainView.runTestButton addTarget:self action:@selector(runThreadingTest)
		forControlEvents:UIControlEventTouchUpInside];

	[mainView.runTest2Button addTarget:self action:@selector(runDispatchGroupTest)
		forControlEvents:UIControlEventTouchUpInside];
	[mainView release];
}

- (MainView *)mainView
{
	return (MainView *) self.view;
}

- (void)runThreadingTest
{
	NSObject *lock = [[[NSObject alloc] init] autorelease];
	__block int sum = 0;
	for ( int j = 0; j < 10; j++ )
	{

		dispatch_async( dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_LOW, 0 ), ^
		{
			@synchronized ( lock )
			{
				sum += 1;
			}
			NSLog( @"j = [%i] %i", j, sum);

			dispatch_async( dispatch_get_main_queue(), ^
			{
				NSLog( @"[Main]j = [%i] %i", j, sum );
			} );
		} );

	}
	NSLog( @"Completed..." );
}

- (void)runDispatchGroupTest
{
	dispatch_queue_t queue = dispatch_queue_create( "com.mycompany.queue", 0 );
	dispatch_group_t group = dispatch_group_create();

	for ( int j = 0; j < 10; j++ )
	{
		dispatch_group_async( group, queue, ^
		{
			printf( "This block is associated with our group\n" );
		} );
	}

	printf( "Waiting..." );
	dispatch_group_wait( group, DISPATCH_TIME_FOREVER );
	NSLog( @"Completed..." );
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
