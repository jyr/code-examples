//
//  HeyWorldViewController.h
//  HeyWorld
//
//  Created by Jair Gaxiola on 11/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeyWorldViewController : UIViewController <UITextFieldDelegate>{
    NSString *userName;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, copy) NSString *userName;

- (IBAction)changeGreeting:(id)sender;

@end
