//
//  ESRectangleDraw.h
//  SumabenKantoDemo01
//
//  Created by 伊藤 伸裕 on 11/06/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESCustomDrawingView.h"

@interface ESRectangleDraw : NSObject <ESCustomDrawing> {
    CGRect frame;
    UIColor* fillColor;
}

@property (nonatomic, assign) CGRect frame;
@property (nonatomic, retain) UIColor* color;

+ (id) rectangleDrawWithFrame:(CGRect)frame withColor:(UIColor*)color;
- (id) initWithFrame:(CGRect)frame withColor:(UIColor*)color;

@end
