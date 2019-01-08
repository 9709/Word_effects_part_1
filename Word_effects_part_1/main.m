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
        
    // print in UPPERCASE
    NSString *uppercase = [inputString uppercaseString];
        NSLog(@"%@", uppercase);
    
    // print in lowercase
    NSString *lowercase = [inputString lowercaseString];
        NSLog(@"%@", lowercase);
         
    // numberize
    int numberized = [inputString intValue];
        NSLog(@"Numberized: %i", numberized);
    
    // canadianize
    NSString *string2 = @", eh";
    NSString *appended = [inputString stringByAppendingString:string2];
        NSLog(@"%@", appended);
        
    // respond
    if ([inputString containsString:@"?"]) {
        NSLog(@"I don't know");
    } else if ([inputString containsString:@"!"]) {
        NSLog(@"Whao, calm down!");
    }
    
    // replace all spaces with "-"
    if ([inputString containsString:@" "]) {
        NSString *replaced = [inputString stringByReplacingOccurrencesOfString:@" "
                                                                    withString:@"-"];
        NSLog(@"%@", replaced);
    }
        
    }
}
