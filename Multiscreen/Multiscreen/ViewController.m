//
//  ViewController.m
//  Multiscreen
//
//  Created by Jack Curtin on 2/22/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize r1_l;
@synthesize r1_r;

@synthesize winButton;
@synthesize loseButton;
@synthesize resetButton;

@synthesize op1Button;
@synthesize op2Button;







- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    winButton.hidden = YES;
    loseButton.hidden = YES;
    resetButton.hidden = YES;



}

- (IBAction)fun_reset:(id)sender
{
    [r1_l setText:@"You explore the current room"];
    [r1_r setText:@"You walk down into the smaller cavern"];
    winButton.hidden = YES;
    loseButton.hidden = YES;
    op1Button.hidden = NO;
    op2Button.hidden = NO;

}

- (IBAction)fun_r1_l:(id)sender
{
    if([r1_l.text isEqualToString:@"You explore the current room"]){
        [r1_l setText:@"You see the exit, Go there"];
        [r1_r setText:@"Something shiny...? Go there"];
        return;
    }
    if([r1_l.text isEqualToString:@"You see the exit, Go there"]){
        [r1_l setText:@"Escape!"];
        [r1_r setText:@" "];
        winButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;


        return;
    }
    if([r1_l.text isEqualToString:@"A fork, Go left"]){
        [r1_l setText:@"A ladder going up, Go up"];
        [r1_r setText:@"A staircase going down, Go down"];
        return;
    }
    
    if([r1_l.text isEqualToString:@"A gap, use rickety bridge"]){
        [r1_l setText:@"Bridge collapsed, you fall into the void"];
        [r1_r setText:@""];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;

        return;
    }
    if([r1_l.text isEqualToString:@"A ladder going up, Go up"]){
        [r1_l setText:@"Find a Wendy's Four for Four meal, eat it"];
        [r1_r setText:@"Don't eat it"];
        return;
    }
    if([r1_l.text isEqualToString:@"Find a Wendy's Four for Four meal, eat it"]){
        [r1_l setText:@"Become the god of tasty meals"];
        [r1_r setText:@" "];
        winButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;

        return;
    }
}

- (IBAction)fun_r1_r:(id)sender
{
    if([r1_r.text isEqualToString:@"You walk down into the smaller cavern"]){
        [r1_l setText:@"A fork, Go left"];
        [r1_r setText:@"A fork, Go right"];
        return;
    }
    if([r1_r.text isEqualToString:@"Don't eat it"]){
        [r1_r setText:@"Anger the gods for refusing their gift"];
        [r1_l setText:@" "];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;

        return;
    }
    
    if([r1_r.text isEqualToString:@"A fork, Go right"]){
        [r1_l setText:@"A gap, use rickety bridge"];
        [r1_r setText:@"A gap, try and jump"];
        return;
    }
    
    if([r1_r.text isEqualToString:@"Something shiny...? Go there"]){
        [r1_r setText:@"It's a bear trap"];
        [r1_l setText:@""];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;
        return;
    }
}


@end
