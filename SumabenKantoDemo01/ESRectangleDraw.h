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
    NSString* name;
    ESCustomDrawingView* container;
}

@property (nonatomic, assign) CGRect frame;
@property (nonatomic, retain) UIColor* color;
@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) ESCustomDrawingView* container;

+ (id) rectangleDrawWithFrame:(CGRect)frame withColor:(UIColor*)color name:(NSString*)name container:(ESCustomDrawingView*)container;
- (id) initWithFrame:(CGRect)frame withColor:(UIColor*)color name:(NSString*)name container:(ESCustomDrawingView*)container;

@end
