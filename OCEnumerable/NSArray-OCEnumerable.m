//
//  NSArray-OCEnumerable.m
//  OCEnumerable
//
//  Created by Zinon Kyprianou on 19/04/2014.
//  Copyright (c) 2014 Zen Kyprianou. All rights reserved.
//

#import "NSArray-OCEnumerable.h"

@implementation NSArray (OCEnumerable)

-(void)each:(void (^)(id))block {
    for (id object in self) {
        NSLog(@"%@", object);
        block(object);
    }
}


@end
