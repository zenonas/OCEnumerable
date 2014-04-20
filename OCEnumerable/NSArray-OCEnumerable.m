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
    __block NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    [self each:^(id object){
        id transformedObject = block(object);
        [mutableArray addObject:transformedObject];
    }];
    NSArray *result = [[NSArray alloc] initWithArray:mutableArray];
    return result;
}

@end
