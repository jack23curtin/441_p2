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
@synthesize mainText;


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
    [mainText setText:@"You wake up in cave, loose rope tied around you, not remembering anything"];

    winButton.hidden = YES;
    loseButton.hidden = YES;
    op1Button.hidden = NO;
    op2Button.hidden = NO;

}

- (IBAction)fun_r1_l:(id)sender
{
    if([r1_l.text isEqualToString:@"You explore the current room"]){
        [mainText setText:@"A bright light to your left, probably the exit. In the corner though... something shiny??"];
        [r1_l setText:@"The exit?, Go there"];
        [r1_r setText:@"Something shiny...? Go there"];
        return;
    }
    if([r1_l.text isEqualToString:@"The exit?, Go there"]){
        [mainText setText:@"You escape!"];
        [r1_l setText:@" "];
        [r1_r setText:@" "];
        winButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;


        return;
    }
    if([r1_l.text isEqualToString:@"A fork, Go left"]){
        [mainText setText:@"A ladder going up, next to a marble staircase going down. Strange."];
        [r1_l setText:@"A ladder going up, Go up"];
        [r1_r setText:@"A staircase going down, Go down"];
        return;
    }
    
    if([r1_l.text isEqualToString:@"A gap, use rickety bridge"]){
        [mainText setText:@"Despite your careful steps, the rope gives way and you fall into the void"];
        [r1_l setText:@""];
        [r1_r setText:@""];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;

        return;
    }
    if([r1_l.text isEqualToString:@"A ladder going up, Go up"]){
        [mainText setText:@"You come into a new room. Sitting on a marble pedestal, a Wendy's Four for $4 Meal"];
        [r1_l setText:@"Find a Wendy's Four for Four meal, eat it"];
        [r1_r setText:@"Don't eat it"];
        return;
    }
    if([r1_l.text isEqualToString:@"Find a Wendy's Four for Four meal, eat it"]){
        [mainText setText:@"This appease the gods. You are presented the exit."];
        [r1_l setText:@" "];
        [r1_r setText:@" "];
        winButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;

        return;
    }
    if([r1_l.text isEqualToString:@"Classic ball room dancing"]){
        [mainText setText:@"Gasps come from the hidden croud! Dancing at a funeral. For shame. You are cursed."];
        [r1_r setText:@" "];
        [r1_l setText:@""];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;
        return;
    }
}

- (IBAction)fun_r1_r:(id)sender
{
    if([r1_r.text isEqualToString:@"You walk down into the smaller cavern"]){
        [mainText setText:@"A fork. Dry and dusty to the right. Wet and mossy on the left"];
        [r1_l setText:@"A fork, Go left"];
        [r1_r setText:@"A fork, Go right"];
        return;
    }
    if([r1_r.text isEqualToString:@"Don't eat it"]){
        [mainText setText:@"Anger the gods for refusing their gift"];
        [r1_r setText:@" "];
        [r1_l setText:@" "];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;

        return;
    }
    
    if([r1_r.text isEqualToString:@"A fork, Go right"]){
        [mainText setText:@"A largish gap spans the floor. There's a rickety bridge that you don't know if you can trust. The jump doesn't look too far..."];
        [r1_l setText:@"A gap, use rickety bridge"];
        [r1_r setText:@"A gap, try and jump"];
        return;
    }
    
    if([r1_r.text isEqualToString:@"Something shiny...? Go there"]){
        [mainText setText:@"It was a bear trap. Due to excessive bleeding, you've perished"];
        [r1_r setText:@" "];
        [r1_l setText:@""];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;
        return;
    }
    if([r1_r.text isEqualToString:@"A staircase going down, Go down"]){
        [mainText setText:@"A large ball room, covered in spiderwebs. Music drifts down from a hidden souce. You feel compelled to dance."];
        [r1_l setText:@"Classic ball room dancing"];
        [r1_r setText:@"New age breakdancing"];
        return;
    }
    if([r1_r.text isEqualToString:@"New age breakdancing"]){
        [mainText setText:@"Gasps come from the hidden croud! Dancing at a funeral. For shame. You are cursed."];
        [r1_r setText:@" "];
        [r1_l setText:@""];
        loseButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;
        return;
    }
    if([r1_r.text isEqualToString:@"A gap, try and jump"]){
        [mainText setText:@"Fame! Fortune! The exit! A lovely lady helps bring you back to civilization (later becoming your beloved wife). You spend the rest of your days lounging around in your various swimming pools in your various houses."];
        [r1_l setText:@""];
        [r1_r setText:@""];
        winButton.hidden = NO;
        op1Button.hidden = YES;
        op2Button.hidden = YES;

        return;
    }
}


@end
