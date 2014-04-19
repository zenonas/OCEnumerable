//
//  NSArray-OCEnumerableTests.m
//  OCEnumerable
//
//  Created by Zen Kyprianou on 19/04/2014.
//  Copyright (c) 2014 Zen Kyprianou. All rights reserved.
//

#define EXP_SHORTHAND
#import "Specta.h"
#import "Expecta.h"
#import "NSArray-OCEnumerable.h"


SpecBegin(NSArray)

describe(@"NSArray (OCEnumerable)", ^{
    __block NSArray *array = @[@1,@2,@3,@4];
    __block NSArray *listOfNames = @[@"Zenonas", @"Aaron", @"Alex", @"Georgia"];
    NSArray *expectedArray = @[@"ZENONAS", @"AARON", @"ALEX", @"GEORGIA"];
    
    describe(@"#each", ^{
        it(@"iterates through every element in the array executing the block", ^{
            __block NSInteger result = 0;
            [array each:^(id number){
                result += [number integerValue];
            }];
            expect(result).to.equal(10);
        });
        
        it(@"handles more interesting blocks", ^{
            __block NSMutableArray *resultingArray;
            
            [listOfNames each:^(id name){
                [resultingArray addObject:[(NSString *)name uppercaseString]];
            }];
            expect(expectedArray).to.equal(expectedArray);
        });
    });
    
    describe(@"#map", ^{
        it(@"maps over the contents of an Array applying the same transformation to each element", ^{
            NSArray *result = [listOfNames map:^(id element){
                return [(NSString *)element uppercaseString];
            }];
            expect(result).to.equal(expectedArray);
        });
    });
    
});


SpecEnd