//
//  SumabenKantoDemo01ViewController.m
//  SumabenKantoDemo01
//
//  Created by 伊藤 伸裕 on 11/06/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SumabenKantoDemo01ViewController.h"

#import "ESCustomDrawingView.h"
#import "ESRectangleDraw.h"

@implementation SumabenKantoDemo01ViewController
@synthesize customDrawingView;

//----------------------------------------------------------------------------------------
#pragma mark 初期化/解放
//----------------------------------------------------------------------------------------

- (void)dealloc
{
    [customDrawingView release];
    [super dealloc];
}

//----------------------------------------------------------------------------------------
#pragma mark ビュー作成／解放
//----------------------------------------------------------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 描画オブジェクトセット
    self.customDrawingView.drawingObjects = 
    [NSArray arrayWithObjects:
     [ESRectangleDraw rectangleDrawWithFrame:CGRectMake(10, 10, 100, 100) 
                                   withColor:[UIColor redColor]
                                        name:@"赤"],
     [ESRectangleDraw rectangleDrawWithFrame:CGRectMake(140, 70, 80, 60) 
                                   withColor:[UIColor greenColor]
                                        name:@"緑"],
     [ESRectangleDraw rectangleDrawWithFrame:CGRectMake(120, 140, 120, 190) 
                                   withColor:[UIColor blueColor]
                                        name:@"青"],
     nil];
}

- (void)viewDidUnload
{
    [self setCustomDrawingView:nil];
    [super viewDidUnload];
}

//----------------------------------------------------------------------------------------
#pragma mark メモリ管理
//----------------------------------------------------------------------------------------

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

//----------------------------------------------------------------------------------------
#pragma mark 画面回転サポート
//----------------------------------------------------------------------------------------

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
