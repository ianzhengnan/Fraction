//
//  Complex.h
//  Fraction
//
//  Created by zhengna on 15/6/25.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

- (void) print;
- (void) setReal:(double)a andImageinary: (double) b;
// old add
//- (Complex *) add: (Complex *) f;
// new add
- (id) addition: (id) f;

@end
