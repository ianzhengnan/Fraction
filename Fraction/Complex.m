//
//  Complex.m
//  Fraction
//
//  Created by zhengna on 15/6/25.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print{

    NSLog(@" %g + %g ", real, imaginary);
}
- (void) setReal:(double)a andImageinary: (double) b{

    real = a;
    imaginary = b;
}
////the old add
//- (Complex *) add: (Complex *) f{
//
//    Complex *result = [[Complex alloc] init];
//    
//    result.real = real + f.real;
//    result.imaginary = imaginary + f.imaginary;
//    
//    return result;
//}

//the new add
- (id) addition: (id) f{

    id result = [[Complex alloc] init];
    
    [result setReal: real + [f real]];
    [result setImaginary: imaginary + [f imaginary]];

    return result;
}


@end
