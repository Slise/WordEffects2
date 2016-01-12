//
//  main.m
//  WordEffects2
//
//  Created by Benson Huynh on 2016-01-11.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        char inputChars[255];
        char functionChars[255];
        while (YES) {
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            // print NSString object
            
            printf("Input a function between 1 and 7: ");
            fgets(functionChars, 255, stdin);
            // convert char array to an NSString object
            
            NSString *functionString = [NSString stringWithUTF8String:functionChars];
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Input was: %@", inputString);
            
//            
//            inputString = [inputString substringWithRange:(NSRange){0, [inputString length] - 1}];
//            
//            inputString = [inputString substringFromIndex:1];
//            [inputString substringToIndex:[inputString length]-1];
            
            
            
            switch(functionString.intValue) {
                case 1 :
                    inputString = [inputString uppercaseString];
                    NSLog(@"%@\n", inputString);
                    break;
                case 2 :
                    inputString = [inputString lowercaseString];
                    NSLog(@"%@\n", inputString);
                    break;
                case 3 :
                {
                    int numberize = [inputString intValue];
                    NSLog(@"%d", numberize);
                }
                    break;
                case 4 :
                    NSLog(@"%@, eh?\n", inputString);
                    break;
                case 5 :
                    if ([inputString hasSuffix:@"?"]) {
                        NSLog(@"I don't know.");
                    }
                    else if ([inputString hasSuffix:@"!"]){
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                case 6 :
                {
                    NSArray *wordCount = [inputString componentsSeparatedByString:@" "];
                    NSLog(@"The amount of word(s) is %lu", (unsigned long)wordCount.count);
                }
                    break;
                    
                case 7 :
                    inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@\n", inputString);
                    break;
                default :
                    NSLog(@"Invalid input\n");
            }
        }
        return 0;
    }
}


