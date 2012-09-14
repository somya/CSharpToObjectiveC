//
//  Created by somya on 9/8/12.
//
//


#import <Foundation/Foundation.h>

@interface MainView : UIView
{
	@private
	UIButton * m_allocButton;
	UILabel * m_messageLabel;
}
@property( nonatomic, retain ) UIButton *allocButton;
@property( nonatomic, retain ) UILabel *messageLabel;


@end