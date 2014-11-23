#import "Person.h"

@implementation Person

- (NSString *)name{
    return [NSString stringWithFormat:@"%@様", _name];
}

@end