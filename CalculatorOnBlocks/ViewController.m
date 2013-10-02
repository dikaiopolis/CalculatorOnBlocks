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

}



- (IBAction)onMathButtonsPressed:(UIButton*)sender {
    firstNumber = firstNumberTextField.text.integerValue;
    secondNumber = secondNumberTextField.text.integerValue;
    
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
        return (firstNumber / SecondNumber);
    };
    
    mathType block = nil;
    
    if (sender == addButton){
        block = addNumber;
    } else if (sender == subtractButton){
        block = subtractNumber;
    } else if (sender == divideButton){
        block = divideNumber;
    } else {
        block = multiplyNumber;
    }
    int answer = [self doMath:firstNumberTextField.text.integerValue secondNumber:secondNumberTextField.text.integerValue block:block];
    answerNumberLabel.text = [NSString stringWithFormat:@"%i", answer];
}

-(int)doMath:(int)andSecondNumber secondNumber:(int)withBlock block:(mathType)block{
    return block(firstNumber, secondNumber);
}
@end
