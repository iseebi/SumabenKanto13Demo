//
//  ESCustomDrawingView.h
//  SumabenKantoDemo01
//
//  Created by 伊藤 伸裕 on 11/06/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//----------------------------------------------------------------------------------------
#pragma mark カスタム描画オブジェクトのプロトコル
//----------------------------------------------------------------------------------------

@protocol ESCustomDrawing <NSObject>

- (void) drawInContext:(CGContextRef)context;

@end

//----------------------------------------------------------------------------------------
#pragma mark カスタム描画ビュー
//----------------------------------------------------------------------------------------

@interface ESCustomDrawingView : UIView {
    NSArray* drawingObjects;
}

@property (nonatomic, retain) NSArray* drawingObjects;

@end
