//
//  main.m
//  Fraction
//
//  Created by zhengna on 15/6/25.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fracResult;
        
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *compResult;
        
        [f1 setTo:1 over:4];
        [f2 setTo:1 over:2];
        
        [c1 setReal:10.0 andImageinary:2.5];
        [c2 setReal:-5.0 andImageinary:3.2];
        
        // Print the results
        
        [c1 print]; NSLog(@"     +"); [c2 print];
        NSLog(@"------");
        compResult = [c1 addition:c2];
        [compResult print];
        NSLog(@"\n");
        
        [f1 print]; NSLog(@"     +"); [f2 print];
        NSLog(@"------");
        fracResult = [f1 addition:f2];
        [fracResult print];
        
        //-------------------------------------------
        Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc] init];
        id number = [[Complex alloc] init];
        
        if ([fraction isMemberOfClass:[Complex class]]) {
            NSLog(@"fraction is member of class complex");
        }
        
        if ([complex isMemberOfClass:[NSObject class]]) {
            NSLog(@"complex is member of NSObject");
        }
        
        if ([complex isKindOfClass:[NSObject class]]) {
            NSLog(@"complex is kind of class NSObject");
        }
        
        if ([fraction respondsToSelector:@selector(print)]) {
            NSLog(@"fraction responds to selector print");
        }
        
        if ([Fraction instancesRespondToSelector:@selector(print)]) {
            NSLog(@"Fraction instance method for selector print");
            
        }
    
        if ([number respondsToSelector:@selector(print)]) {
            NSLog(@"number respondes to selector print");
        }
        
        if ([number isKindOfClass:[Complex class]]) {
            NSLog(@"number is kind of class complex");
        }
        
        if ([[number class] respondsToSelector:@selector(alloc)]) {
            NSLog(@"[number class] responds to selector alloc");
        }
        
    }
    return 0;
}
