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


- (void)largestPalindromeFromTwo3digitNumbers
{
    
}

- (void)largestPrimeFactorOf600851475143
{
    long long divisibleNumber = 600851475143;
    NSMutableArray *factorsArray = [NSMutableArray array];

    for (long long i = 1; i < divisibleNumber; i++) {
        if (divisibleNumber % i == 0) {
            NSLog(@"%lld is a factor of %lld", i, divisibleNumber);
            
            if ([self checkIfValueIsaPrimeNumber:i]) {
                [factorsArray addObject:[NSNumber numberWithLongLong:i]];
                NSLog(@"%lld is a PRIME factor of %lld", i, divisibleNumber);
            }
        }
    }
    
    NSNumber *largestPrimeFactor = [factorsArray valueForKeyPath:@"@max.self"];
    NSLog(@"largestPrimeFactor of %lld is =%@", divisibleNumber, largestPrimeFactor);
}

- (BOOL)checkIfValueIsaPrimeNumber:(long long)number
{
    BOOL isPrimeNumber = NO;
    NSMutableArray *factorsArray = [NSMutableArray array];
    
    for (long long i = 2; i < number; i++) {
        if (number % i == 0) {
            [factorsArray addObject:[NSNumber numberWithLongLong:i]];
        }
    }
    
    if (!factorsArray.count) {
        isPrimeNumber = YES;
    }
    
    return isPrimeNumber;
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
