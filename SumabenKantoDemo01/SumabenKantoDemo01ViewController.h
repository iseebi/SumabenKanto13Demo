//
//  SumabenKantoDemo01ViewController.h
//  SumabenKantoDemo01
//
//  Created by 伊藤 伸裕 on 11/06/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ESCustomDrawingView;

@interface SumabenKantoDemo01ViewController : UIViewController {
    
    ESCustomDrawingView *customDrawingView;
}
@property (nonatomic, retain) IBOutlet ESCustomDrawingView *customDrawingView;

@end
