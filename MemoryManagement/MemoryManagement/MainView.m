//
//  Created by somya on 9/8/12.
//
//


#import "MainView.h"

@implementation MainView
@synthesize runTestButton = m_runTestButton;
@synthesize messageLabel = m_messageLabel;

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if ( self )
	{
		m_runTestButton = [[UIButton alloc] init];
		m_runTestButton.backgroundColor = [UIColor whiteColor];
		[m_runTestButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		[m_runTestButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
		[m_runTestButton setTitle:@"Alloc Test" forState:UIControlStateNormal];
		[self addSubview:m_runTestButton];

		m_messageLabel = [[UILabel alloc] init];
//		m_messageLabel.textColor = [UIColor whiteColor];
		[self addSubview:m_messageLabel];
	}

	return self;
}

- (void)layoutSubviews
{
	[super layoutSubviews];

	self.messageLabel.frame = CGRectMake( 20, 20, 280, 20 );
	self.runTestButton.frame = CGRectMake( 40, 50, 240, 28 );
}

- (void)dealloc
{
	[m_runTestButton release];
	[m_messageLabel release];
	[super dealloc];
}

@end