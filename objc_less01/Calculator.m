//
//  Calculator.m
//  objc_less01
//
//  Created by Nikolay Trofimov on 28.10.2020.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype) init {
    if (self = [super init]) {
        NSLog(@"Calculator instance created");
    }
    return self;
}


- (void) dealloc {
    NSLog(@"Calculator instance deallocated");
    [super dealloc];
}


- (NSString *)description {
    return @"Available operations - Sum, Substr, Division, Multiplication, Reminder";
}


-(int) calculate:(enum Operations)method andArg1:(int)a andArg2:(int)b {
   
    if (method == Sum) {
        return calculateSum(a, b);
    }
    else if (method == Substr) {
        return calculateSubstr(a, b);
    }
    else if (method == Multiplication) {
        return calculateMulti(a, b);
    }
    else if (method == Division) {
        return calculateDiv(a, b);
    }
    else if (method == Reminder) {
        return calculateReminder(a, b);
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }

}

int calculateSum(int a, int b) {
    return a + b;
}

int calculateSubstr(int a, int b) {
    return a - b;
}

int calculateDiv(int a, int b) {
    return a / b;
}

int calculateMulti(int a, int b) {
    return a * b;
}

int calculateReminder(int a, int b) {
    return a % b;
}


@end
