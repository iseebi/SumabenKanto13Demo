//
//  ESCustomDrawingView.m
//  SumabenKantoDemo01
//
//  Created by 伊藤 伸裕 on 11/06/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ESCustomDrawingView.h"


@implementation ESCustomDrawingView

@synthesize drawingObjects;

//----------------------------------------------------------------------------------------
#pragma mark 初期化/解放
//----------------------------------------------------------------------------------------

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)dealloc
{
    self.drawingObjects = nil;
    [super dealloc];
}

//----------------------------------------------------------------------------------------
#pragma mark 描画
//----------------------------------------------------------------------------------------

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    if (self.drawingObjects != nil) {
        for (id<ESCustomDrawing> obj in self.drawingObjects) {
            [obj drawInContext:context];
        }        
    }
}

//----------------------------------------------------------------------------------------
#pragma mark アクセシビリティサポート
//----------------------------------------------------------------------------------------


@end
