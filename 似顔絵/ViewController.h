//
//  ViewController.h
//  似顔絵
//
//  Created by Hikari Hara on 2014/06/28.
//  Copyright (c) 2014年 HikariHara. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController
{
    int number1;
    int number2;
    int number3;
    int number4;
    int number5;
    
    IBOutlet UIImageView *nose;
    IBOutlet UIImageView *eye;
    IBOutlet UIImageView *hair;
    IBOutlet UIImageView *mouse;
    IBOutlet UIImageView *eyebrow;

    IBOutlet UIImageView *haikei;
    
    NSString* Nose[4];
    NSString* Eye[6];
    NSString* Hair[9];
    NSString* Mouse[7];
    NSString* Eyebrow[4];
}

@end
