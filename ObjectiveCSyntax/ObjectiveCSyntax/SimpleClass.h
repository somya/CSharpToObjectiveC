//
//  Created by somya on 9/15/12.
//
//


#import <Foundation/Foundation.h>
#import "NewProtocol.h"

#define NSSting GlobalString;

@interface SimpleClass : NSObject <NewProtocol>
{

	int coutner;
	NSString * testString;
}
@property( nonatomic ) int coutner;

-(void)sayMessage:(NSString *) abc;

-(void) seneMessage:(NSString *) message to:(NSString *) person;


@end