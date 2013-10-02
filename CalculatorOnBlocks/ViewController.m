//
//  ViewController.m
//  CalculatorOnBlocks
//
//  Created by Daniel Baldwin on 10/1/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
typedef int (^mathType) (int, int);

@implementation ViewController
@synthesize firstNumberTextField, secondNumberTextField, answerNumberLabel, addButton, subtractButton, divideButton, multiplyButton, firstNumber, secondNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    firstNumber = firstNumberTextField.text.integerValue;
    secondNumber = secondNumberTextField.text.integerValue;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Declare the block variable
        double (^distanceFromRateAndTime)(double rate, double time);
        
        // Create and assign the block
        distanceFromRateAndTime = ^double(double rate, double time) {
            return rate * time;
        };
        // Call the block
        double dx = distanceFromRateAndTime(35, 1.5);
        
        NSLog(@"A car driving 35 mph will travel "
              @"%.2f miles in 1.5 hours.", dx);
    }
    return 0;
}

mathType addNumber = ^(int firstNumber, int SecondNumber)
{
    return (firstNumber + SecondNumber);
};

mathType subtractNumber = ^(int firstNumber, int SecondNumber)
{
    return (firstNumber - SecondNumber);
};

mathType multiplyNumber = ^(int firstNumber, int SecondNumber)
{
    return (firstNumber * SecondNumber);
};

mathType divideNumber = ^(int firstNumber, int SecondNumber)
{
    return (firstNumber * SecondNumber);
};

mathType block = nil;

- (IBAction)onMathButtonsPressed:(UIButton*)sender {
    
    if (sender == addButton){
        block = addNumber;
    } else if (sender == subtractButton){
        block = subtractNumber;
    } else if (sender == divideButton){
        block = divideNumber;
    } else if (sender == multiplyButton){
        block = multiplyNumber;
    }
    answerNumberLabel.text = [NSString stringWithFormat:@"%i", (int)block];
}
//- (IBAction)onMathButtonsPressed:(UIButton*)sender {
//    
//    if ([sender.titleLabel.text isEqualToString:@"Add"]){
//        block = addNumber;
//    } else if ([sender.titleLabel.text isEqualToString:@"Subtract"]){
//        block = subtractNumber;
//    } else if ([sender.titleLabel.text isEqualToString:@"Divide"]){
//        block = divideNumber;
//    } else if ([sender.titleLabel.text isEqualToString:@"Multiply"]){
//        block = multiplyNumber;
//    }
//    answerNumberLabel.text = [NSString stringWithFormat:@"%i", (int)block];
//}
@end
