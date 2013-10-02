//
//  ViewController.h
//  CalculatorOnBlocks
//
//  Created by Daniel Baldwin on 10/1/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *answerNumberLabel;

- (IBAction)onMathButtonsPressed:(UIButton*)sender;


@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *subtractButton;
@property (weak, nonatomic) IBOutlet UIButton *multiplyButton;
@property (weak, nonatomic) IBOutlet UIButton *divideButton;

@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;


@end
