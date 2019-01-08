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
    }
    
}
