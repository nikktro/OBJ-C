//
//  main.m
//  objc_less01
//
//  Created by Nikolay Trofimov on 09.10.2020.
//

#import <Foundation/Foundation.h>

enum Operations {
    Sum,
    Substr,
    Division,
    Multiplication,
    Reminder
};

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

int calculate(enum Operations method, int a, int b) {
   
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
    
    return a + b;

}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Lesson 3 HW
        
        // Task 0
        // Создать программу, которая будет выводить список введенных
        // пользователем значений (с применением функции scanf).
        
        printf("----Task0----\n");
        printf("Enter 3 names to store in array \n");
        NSMutableArray *allInputs = [[NSMutableArray alloc]init];
        char inputs[3][20];
        
        for(int i=0;i<3;i++)
        {
            printf("Enter name %i: ", i + 1);
            scanf("%[^\n]%*c",inputs[i]);
            NSString *inputString = [NSString stringWithCString:inputs[i] encoding:NSASCIIStringEncoding];
            [allInputs addObject:inputString];
        }

        printf("You entered 3 names: \n");
        for(int i=0;i<3;i++)
        {
           printf("%s\n", inputs[i]);
        }
        
        
        // Task 1
        // Создать массив строк и вывести его в консоль используя цикл.
        
        printf("----Task1----\n");
        NSArray *names = [[NSArray alloc] initWithObjects:@"Alex", @"Nick", @"John", nil];
        NSArray *surnames = @[ @"Smith", @"Scott", @"Fisher"];
        
        printf("Iterate names with FOR loop: \n");
        for (int i = 0; i < 3; i++) {
            NSLog(@"Hello %@ %@", names[i], surnames[i]);
        }
        
        printf("Iterate names with WHILE loop: \n");
        int i = 0;
        while (i < names.count) {
            NSLog(@"%@\n", names[i]);
            i++;
        }
        
        
        // Tast 2
        // Улучшить калькулятор с помощью перечислений, чтобы все
        // возможные методы (сложение, вычитание, деление, умножение)
        // передавались в виде состояния;
        
        printf("----Task2----\n");
        int a = 18;
        int b = 4;
        printf("Operands: %i, %i\n", a, b);
        printf("Sum is %i\n", calculate(Sum, a, b));
        printf("Subtraction is %i\n", calculate(Substr, a, b));
        printf("Multiply is %i\n", calculate(Multiplication, a, b));
        printf("Devision is %i\n", calculate(Division, a, b));
        printf("Reminder is %i\n", calculate(Reminder, a, b));
        
        
        // Task 3
        // Создать структуру Human. Со свойствами “Name” (NSString),
        // “Age”(NSInterger), “Gander”(NS_Enum). Создать несколько экземпляров
        // структуры и вывести их в консоль.
        
        printf("----Task3----\n");
        typedef NS_ENUM(NSInteger) {
            Male,
            Female
        } Gender;
        
        typedef struct Human {
            NSString *name;
            NSInteger age;
            Gender gender;
        } Human;
        
        struct Human John;
        struct Human Lisa;
        
        John.name = @"John";
        John.age = 22;
        John.gender = Male;
        
        Lisa.name = @"Lisa";
        Lisa.age = 27;
        Lisa.gender = Female;
        
        NSLog(@"Hello, my name is %@, my age %ld", John.name, (long)John.age);
        John.gender == 0 ? NSLog(@"%@ is Male", John.name) : NSLog(@"%@ is Female", John.name);
        
        NSLog(@"Hello, my name is %@, my age %ld", Lisa.name, (long)Lisa.age);
        Lisa.gender == 0 ? NSLog(@"%@ is Male", Lisa.name) : NSLog(@"%@ is Female", Lisa.name);
        
    }
    return 0;
}
