//
//  main.m
//  objc_less01
//
//  Created by Nikolay Trofimov on 09.10.2020.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int first;
        int second;
        
        printf("Enter first number: ");
        scanf("%d", &first);
        
        printf("Enter second number: ");
        scanf("%d", &second);
        
        
        // Task 1
        printf("--------Task1--------\n");
        printf("The sum is %d\n", first + second);
        printf("The substract is %d\n", first - second);
        printf("The multiple is %d\n", first * second);
        printf("The division is %d, with remainder %d\n", first / second, first % second);
        
        
        // Task 2
        printf("--------Task2--------\n");
        NSLog(@"The sum is %i, The substract is %i, The multiple is %i, The division is %i, remainder is %i", first + second, first - second, first * second, first / second, first % second);
        
        // Task 3
        printf("--------Task3--------\n");
        int random1 = arc4random_uniform(10);
        int random2 = arc4random_uniform(10);
        int random3 = arc4random_uniform(10);
        
        printf("Three random values %d, %d, %d\n", random1, random2, random3);
        printf("The AVG is %f\n", ((float)random1 + (float)random2 + (float)random3) / 3);
        
    }
    return 0;
}
