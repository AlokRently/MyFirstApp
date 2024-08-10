//
//  ViewController.h
//  MyFirstApp
//
//  Created by Rently Coimbatore on 10/08/24.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID soundID;
}


@property (weak, nonatomic) IBOutlet UILabel *label;


- (IBAction)action:(id)sender;




@end

