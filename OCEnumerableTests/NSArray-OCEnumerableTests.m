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


SpecBegin(NSArray)

describe(@"NSArray (OCEnumerable)", ^{
    __block NSArray *array = @[@1,@2,@3,@4];
    
    describe(@"#each", ^{
        it(@"iterates through every element in the array", ^{
            __block NSInteger result = 0;
            [array each:^(NSInteger number){
                result += number;
            }];
            expect(result).to.equal(10);
            
        });
        
    });
    
    
});


SpecEnd