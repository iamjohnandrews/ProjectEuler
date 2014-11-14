//
//  ViewController.m
//  ProjectEuler
//
//  Created by John Andrews on 11/14/14.
//  Copyright (c) 2014 practice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)largestPrimeFactorOf600851475143
{
    
}

- (void)findSumOfEvenValuedFibonacciValuesLessThan4Million
{
    NSMutableArray *fibonacciSequenceArray = [NSMutableArray array];
    NSMutableArray *fibonacciEvenNumbersSumLessThan4Mil = [NSMutableArray array];
    
    
    [fibonacciSequenceArray addObject:[NSNumber numberWithInt:1]];
    [fibonacciSequenceArray addObject:[NSNumber numberWithInt:2]];
    
    for (int i = 2; i < 1000000; i++) {
        NSNumber *previousValue = [fibonacciSequenceArray objectAtIndex:i-1];
        NSNumber *previousPreviousValue = [fibonacciSequenceArray objectAtIndex:i-2];
        
        int nextFibinacciSequenceInt = [previousValue integerValue] + [previousPreviousValue integerValue];
        [fibonacciSequenceArray addObject:[NSNumber numberWithInt:nextFibinacciSequenceInt]];
        
        if (nextFibinacciSequenceInt % 2 == 0) {
            NSLog(@"nextFibinacciSequenceInt =%d", nextFibinacciSequenceInt);
            [fibonacciEvenNumbersSumLessThan4Mil addObject:[NSNumber numberWithInt:nextFibinacciSequenceInt]];
        }
        
        NSNumber *sum = [fibonacciEvenNumbersSumLessThan4Mil valueForKeyPath:@"@sum.self"];
        NSLog(@"Sum =%@", sum);
        if (nextFibinacciSequenceInt > 4000000) {
            NSLog(@"fibonacciEvenNumbersSumLessThan4Mil =%@", fibonacciEvenNumbersSumLessThan4Mil);
            break;
        }
    }
}

- (void)findSumMultiplesOf3and5upTo1000
{
    NSMutableArray *numbersDivisibleBy3Or5Array = [NSMutableArray array];
    
    for (int i = 0; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            NSLog(@"%d", i);
            [numbersDivisibleBy3Or5Array addObject:[NSNumber numberWithInt:i]];
        }
    }
    
    NSNumber *sum = [numbersDivisibleBy3Or5Array valueForKeyPath:@"@sum.self"];
    NSLog(@"Sum =%@", sum);
}

@end
