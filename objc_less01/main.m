//
//  main.m
//  objc_less01
//
//  Created by Nikolay Trofimov on 09.10.2020.
//

#import <Foundation/Foundation.h>



BOOL alphabet(char input) {
    return ((input >= 'a' && input <= 'z') || (input >= 'A' && input <= 'Z'));
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

int calculate(NSString *method, int a, int b) {
   
    if ([method isEqualToString:@"+"]) {
        return calculateSum(a, b);
    }
    else if ([method isEqualToString:@"-"]) {
        return calculateSubstr(a, b);
    }
    else if ([method isEqualToString:@"*"]) {
        return calculateMulti(a, b);
    }
    else if ([method isEqualToString:@"/"]) {
        return calculateDiv(a, b);
    }
    else if ([method isEqualToString:@"%"]) {
        return calculateReminder(a, b);
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    
    return a + b;

}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Lesson 2 HW
        
        // Task 1
        char input;
        printf("Enter character: ");
        scanf("%c", &input);
        BOOL isAlphabet = alphabet(input);
        
        printf("Character is in alphabet: %s\n", isAlphabet ? "YES" : "NO");
        printf("ASCII %i\n", input);
        printf("------------\n");
        
        // Task 2
        int a = 18;
        int b = 4;
        printf("Operands: %i, %i\n", a, b);
        printf("Sum is %i\n", calculate(@"+", a, b));
        printf("Subtraction is %i\n", calculate(@"-", a, b));
        printf("Multiply is %i\n", calculate(@"*", a, b));
        printf("Devision is %i\n", calculate(@"/", a, b));
        printf("Reminder is %i\n", calculate(@"%", a, b));
        
    }
    return 0;
}
