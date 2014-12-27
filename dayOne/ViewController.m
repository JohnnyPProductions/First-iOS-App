//
//  ViewController.m
//  dayOne
//
//  Created by Johnny Parizek on 12/20/14.
//  Copyright (c) 2014 Johnny Parizek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISlider *sliderTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@property (weak, nonatomic) IBOutlet UIButton *smellButton;
@property (weak, nonatomic) IBOutlet UIImageView *joeyImage;
@property (weak, nonatomic) IBOutlet UIButton *yesLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.text = @"0";
    self.labelTwo.text = @"0";
    self.answerLabel.text = @"0";
    self.smellButton.hidden = YES;
    self.joeyImage.hidden = YES;
    self.yesLabel.hidden = YES;
    
}

- (IBAction)sliderOneActivated:(id)sender
{
    self.label.text = [NSString stringWithFormat: @"%.0f", self.slider.value];
}

- (IBAction)sliderTwoActivated:(id)sender {
    self.labelTwo.text = [NSString stringWithFormat: @"%.0f", self.sliderTwo.value];
}

- (IBAction)buttonClicked:(id)sender {
    NSInteger answer = self.slider.value + self.sliderTwo.value;
     self.answerLabel.text = [NSString stringWithFormat: @"%ld", (long)answer];
    
    if (answer < 5)
    {
        self.colorLabel.backgroundColor = [UIColor redColor];
    }
    
    else if (answer > 10)
    {
        self.colorLabel.backgroundColor = [UIColor blueColor];
        self.smellButton.hidden = NO;
    }
    
    else
    {
        self.colorLabel.backgroundColor = [UIColor greenColor];
    }
    
    if (answer < 11)
    {
        self.joeyImage.hidden = YES;
        self.yesLabel.hidden = YES;
        self.smellButton.hidden = YES;
    }

}
- (IBAction)joeySmellButton:(id)sender
{
    self.joeyImage.hidden = NO;
    self.colorLabel.backgroundColor = [UIColor brownColor];
    self.yesLabel.hidden = NO;
}

- (IBAction)yesClicked:(id)sender
{
    self.label.text = @"p";
    self.labelTwo.text = @"o";
    self.answerLabel.text = @"o";
    
}



@end
