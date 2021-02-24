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




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    winButton.hidden = YES;
    loseButton.hidden = YES;


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
    
    if([r1_r.text isEqualToString:@"Something shiny...? Go there"]){
        [r1_r setText:@"It's a bear trap"];
        [r1_l setText:@""];
        loseButton.hidden = NO;
        return;
    }
}


@end
