//
//  Created by somya on 9/15/12.
//
//


#import "SimpleClass.h"

@interface SimpleClass ()
- (void)hello;

@end

NSString * GlobalString;

@implementation SimpleClass
@synthesize coutner;

-(void) hello
{
    
}

- (void)sayHelloWorld
{
NSLog(@"Hello World");
}

- (int)coutner
{
	return coutner;
}

- (void)setCoutner:(int)coutner1
{
	coutner = coutner1;
}


@end