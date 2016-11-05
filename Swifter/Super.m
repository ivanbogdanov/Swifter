#import "Super.h"

#import "MSDK.h"

@implementation Super


+ (NSString *)hello{
    return [MSDK hello];
}

- (NSString *)sayHello{
    return [MSDK hello];
}

@end
