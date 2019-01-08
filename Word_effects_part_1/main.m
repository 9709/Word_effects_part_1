//
//  main.m
//  Word_effects_part_1
//
//  Created by Matthew Chan on 2019-01-07.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    while (YES) {
        
        
        // 255 unit long array of characters
        char inputChars[255];
        
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        NSLog(@"%p", inputString);
        
        
        char options [255];
        
        NSLog(@"1 for UPPERCASING");
        NSLog(@"2 for lowercasing");
        NSLog(@"3 for numberizing");
        NSLog(@"4 for canadianizing");
        NSLog(@"5 for responding");
        NSLog(@"6 for replacing all spaces with -");
        NSLog(@"Next, please choose your style:");
        
        fgets(options, 255, stdin);
        NSString *primingOptions = [NSString stringWithUTF8String:options];
        int optionsFormated = [primingOptions intValue];
        
        NSString *uppercase = [inputString uppercaseString];
        NSString *lowercase = [inputString lowercaseString];
        int numberized = [inputString intValue];
        NSString *string2 = @", eh";
        NSString *appended = [inputString stringByAppendingString:string2];
        NSString *appended2 = [[appended componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];
        
        switch(optionsFormated) {
            
            case 1:
            // print in UPPERCASE
            NSLog(@"%@", uppercase);
            break;
            
            case 2:
            // print in lowercase
            NSLog(@"%@", lowercase);
            break;
            
            case 3:
            // numberize - does not work if you input "0"
            if (numberized != 0) {
            NSLog(@"Numberized: %i", numberized);
            } else {
            NSLog(@"This is not a number! :(");
            }
            break;
            
            case 4:
            // canadianize
            NSLog(@"%@", appended2);
            break;
            
            case 5:
            // respond
            if ([inputString containsString:@"?"]) {
                NSLog(@"I don't know");
            } else if ([inputString containsString:@"!"]) {
                NSLog(@"Whao, calm down!");
            }
            break;
            
            case 6:
            // replace all spaces with "-"
            if ([inputString containsString:@" "]) {
                NSString *replaced = [inputString stringByReplacingOccurrencesOfString:@" "
                                                                            withString:@"-"];
                NSLog(@"%@", replaced);
            }
            break;
        }
        
        
    }
}
