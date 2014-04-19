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
        block(object);
    }
}

-(NSArray *)map:(id (^)(id))block {
    NSMutableArray *mutableArray;
    for (id object in self) {
        NSLog(@"%@", object);
        NSLog(@"%@", block(object));
        [mutableArray addObject:block(object)];
    }
    NSArray *result = [[NSArray alloc] initWithArray:mutableArray];
    return result;
}

@end
