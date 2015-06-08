//
//  ViewController.m
//  似顔絵
//
//  Created by Hikari Hara on 2014/06/28.
//  Copyright (c) 2014年 HikariHara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)nose{
    number1=number1+1;
    nose.image=[UIImage imageNamed:Nose[number1-1]];
    
    if(number1 == 4){
        number1 = 0;
    }
}

-(IBAction)eye{
    number2=number2+1;
    eye.image=[UIImage imageNamed:Eye[number2-1]];
    
    if(number2 == 6){
        number2 = 0;
    }
}

-(IBAction)hair{
    number3=number3+1;
    hair.image=[UIImage imageNamed:Hair[number3-1]];
    
    if(number3 == 8){
        number3 = 0;
    }
}

-(IBAction)mouse{
    number4=number4+1;
    mouse.image=[UIImage imageNamed:Mouse[number4-1]];
    
    if(number4 == 7){
        number4 = 0;
    }
}
-(IBAction)eyebrow{
    number5=number5+1;
    eye.image=[UIImage imageNamed:Eyebrow[number2-1]];
    
    if(number5 == 4){
        number5 = 0;
    }
}

- (void)initSaveButton
{
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake((self.view.frame.size.width / 2) - (_buttonWidth / 2),
                                   self.view.frame.size.height - _buttonHeight - _buttonMarginY,
                                   _buttonWidth,
                                   _buttonHeight);
    [self.button setTitle:@"Save"
                 forState:UIControlStateNormal];
    [self.button sizeToFit];
    [self.button addTarget:self
                    action:@selector(saveButtonEvent)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

//画像を保存する
- (void)saveButtonEvent
{
    //保存する画像を指定
    UIImage *image = [UIImage imageNamed:_imageName];
    //画像保存完了時のセレクタ指定
    SEL selector = @selector(onCompleteCapture:didFinishSavingWithError:contextInfo:);
    //画像を保存する
    UIImageWriteToSavedPhotosAlbum(image, self, selector, NULL);
}

//画像保存完了時のセレクタ
- (void)onCompleteCapture:(UIImage *)screenImage
 didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    NSString *message = @"画像を保存しました";
    if (error) message = @"画像の保存に失敗しました";
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @""
                                                    message: message
                                                   delegate: nil
                                          cancelButtonTitle: @"OK"
                                          otherButtonTitles: nil];
    [alert show];
}



- (void)viewDidLoad
{
    
    Nose[0]=@"nose1.png";
    Nose[1]=@"nose2.png";
    Nose[2]=@"nose3.png";
    Nose[3]=@"nose4.png";

    
    Eye[0]=@"eye1.png";
    Eye[1]=@"eye2.png";
    Eye[2]=@"eye3.png";
    Eye[3]=@"eye4.png";
    Eye[4]=@"eye5.png";
    Eye[5]=@"eye6.png";
    
    Hair[0]=@"hair1.png";
    Hair[1]=@"hair2.png";
    Hair[2]=@"hair3.png";
    Hair[3]=@"hair4.png";
    Hair[4]=@"hair5.png";
    Hair[5]=@"hair6.png";
    Hair[6]=@"hair7.png";
    Hair[7]=@"hair8.png";
    Hair[8]=@"hair.png";

    Mouse[0]=@"mouse1.png";
    Mouse[1]=@"mouse2.png";
    Mouse[2]=@"mouse3.png";
    Mouse[3]=@"mouse4.png";
    Mouse[4]=@"mouse5.png";
    Mouse[5]=@"mouse6.png";
    Mouse[6]=@"mouse7.png";
    
    
    Eyebrow[0]=@"eyebrow1.png";
    Eyebrow[1]=@"eyebrow2.png";
    Eyebrow[2]=@"eyebrow3.png";
    Eyebrow[3]=@"eyebrow4.png";

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
