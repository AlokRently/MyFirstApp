//
//  ViewController.m
//  MyFirstApp
//
//  Created by Rently Coimbatore on 10/08/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.label.hidden = YES;
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, & soundID);
    
}




- (IBAction)action:(id)sender {
    
    self.label.hidden = NO;
    self.label.text = @"Meow !!!!!";
    
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:2 target: self selector: @selector (hideLabel) userInfo:nil repeats:NO];
}

-(void) hideLabel {
    self.label.hidden = YES;
}

@end
