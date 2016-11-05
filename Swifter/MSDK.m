#import "MSDK.h"

@implementation MSDK


+ (NSString *)hello{
    NSString *sourceString = [[NSThread callStackSymbols] objectAtIndex:1];
    NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@" -[]+?.,"];
    NSMutableArray *array = [NSMutableArray arrayWithArray:[sourceString  componentsSeparatedByCharactersInSet:separatorSet]];
    [array removeObject:@""];
    NSString *classCaller = [array objectAtIndex:3];
    if([classCaller hasPrefix:@"_"]&&[classCaller hasSuffix:@"_"]){
        return @"called by Swift";
    }
    return @"called by Obj-C";
}

@end
