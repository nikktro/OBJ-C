//
//  Bird.m
//  objc_less01
//
//  Created by Nikolay Trofimov on 28.10.2020.
//

#import "Bird.h"

@implementation Bird

- (instancetype) initNewBird:(NSNumber *)number {
    if (self = [super init]) {
        _number = [number retain];
        NSLog(@"A new bird has arrived - %@", _number);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"The bird flew away - %@", _number);
    [_number release];
    [super dealloc];
}

+ (instancetype)factory {
    return [[[Bird alloc] init] autorelease];
}

@end
