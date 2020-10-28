//
//  Calculator.h
//  objc_less01
//
//  Created by Nikolay Trofimov on 28.10.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

enum Operations {
    Sum,
    Substr,
    Division,
    Multiplication,
    Reminder
};

-(int) calculate:(enum Operations)method andArg1:(int)a andArg2:(int)b;

- (NSString *)description;

@end

NS_ASSUME_NONNULL_END
