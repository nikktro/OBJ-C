//
//  main.m
//  objc_less01
//
//  Created by Nikolay Trofimov on 09.10.2020.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Lesson 5 HW
        
        // part 1. Изменить созданный калькулятор из предыдущих уроков:
        // внедрить ручное управление памятью.
        NSLog(@"-----Part1-----\n");
        
        Calculator *calculator = [Calculator new];

        int a = 3;
        int b = 6;
        
        NSLog(@"Arguments for calculation: %d, %d", a, b);
        NSLog(@"%@", [calculator description]);
        NSLog(@"Multiplication: %d", [calculator calculate:Multiplication andArg1:a andArg2:b]);
        NSLog(@"Sum: %d", [calculator calculate:Sum andArg1:a andArg2:b]);
        NSLog(@"Reminder: %d", [calculator calculate:Reminder andArg1:a andArg2:b]);

        [calculator release];
        
        
        // part 2. Смоделировать и разработать программу «Стая птиц»
        // (на основе практического задания) с применением ручного управления памятью.
        NSLog(@"\n");
        NSLog(@"-----Part2-----\n");
        
        NSMutableArray *birds = [NSMutableArray array];
        
        for (int i = 1; i < 10; i++) {
            Bird *bird = [[Bird alloc] initNewBird: [NSNumber numberWithInt:i]];
            [birds addObject: bird];
        }
        
        for (Bird *bird in birds) {
            [bird release];
        }
        
        
        // part 3. *Улучшить созданную программу из задания 2: применить
        // пул автоматического освобождения.
        NSLog(@"\n");
        NSLog(@"-----Part3-----\n");
        
        NSMutableArray *birdsFactory = [NSMutableArray array];
        
        for (int i = 1; i < 5; i++) {
            Bird *bird = [[Bird factory] initNewBird: [NSNumber numberWithInt:i]];
            [birdsFactory addObject: bird];
        }
                                
    }
    return 0;
}
