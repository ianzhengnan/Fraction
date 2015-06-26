//
//  Fraction.m
//  Fraction
//
//  Created by zhengna on 15/6/25.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void)print{

    NSLog(@"%i/%i", numerator, denominator);
}

- (double)convertToNum{

    if (denominator != 0) {
        return (double) numerator / denominator;
    }else{
        return NAN;
    }
}


- (void)setTo:(int)n over:(int)d{

    numerator = n;
    denominator = d;
}
////old add method
//- (Fraction *) add: (Fraction *)f{
//
//    //To add two fractions
//    // a/b + c/d = ((a*d) + (b*c)) / (b*d)
//    Fraction *result = [[Fraction alloc] init];
//    
//    result.numerator = numerator * f.denominator + denominator * f.numerator;
//    result.denominator = denominator * f.denominator;
//    
//    //[self reduce];
//    
//    [result reduce];
//    
//    return result;
//    
//}

//new add method. cannot use dot operation anymore
- (id)addition: (id)f{
    
    id result = [[Fraction alloc] init];
    
    [result setNumerator: numerator * [f denominator] + denominator * [f numerator]];
    [result setDenominator: denominator * [f denominator]];
    
    //[self reduce];
    
    [result reduce];
    
    return result;
}


- (void)reduce{

    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0 ) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}


@end
