//
//  Created by somya on 9/8/12.
//
//


#import <Foundation/Foundation.h>

@interface MainView : UIView
{
@private
	UIButton *m_runTestButton;
	UILabel *m_messageLabel;
	UIButton *m_runTest2Button;
}
@property( nonatomic, retain ) UIButton *runTestButton;
@property( nonatomic, retain ) UIButton *runTest2Button;
@property( nonatomic, retain ) UILabel *messageLabel;


@end