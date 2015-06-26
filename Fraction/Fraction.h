//
//  Fraction.h
//  Fraction
//
//  Created by zhengna on 15/6/25.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject


@property int numerator, denominator;

- (void)print;

- (void)setTo: (int)n over:(int)d;

- (double)convertToNum;

//old add
//- (Fraction *) add: (Fraction *)f;

//new add
- (id)addition: (id)f;

- (void) reduce;

@end
