//
//  Created by somya on 9/8/12.
//
//


#import "MainView.h"

@implementation MainView
@synthesize allocButton = m_allocButton;
@synthesize messageLabel = m_messageLabel;

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if ( self )
	{
		m_allocButton = [[UIButton alloc] init];
		m_allocButton.backgroundColor = [UIColor whiteColor];
		[m_allocButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		[m_allocButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
		[m_allocButton setTitle:@"Alloc Test" forState:UIControlStateNormal];
		[self addSubview:m_allocButton];

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
	self.allocButton.frame = CGRectMake( 40, 50, 240, 28 );
}

- (void)dealloc
{
	[m_allocButton release];
	[m_messageLabel release];
	[super dealloc];
}

@end