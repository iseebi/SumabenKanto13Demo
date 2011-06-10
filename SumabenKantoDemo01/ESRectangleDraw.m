//
//  ESRectangleDraw.m
//  SumabenKantoDemo01
//
//  Created by 伊藤 伸裕 on 11/06/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ESRectangleDraw.h"

@implementation ESRectangleDraw

@synthesize frame;
@synthesize color;
@synthesize name;

//----------------------------------------------------------------------------------------
#pragma mark 初期化／解放
//----------------------------------------------------------------------------------------

+ (id) rectangleDrawWithFrame:(CGRect)frame withColor:(UIColor*)color name:(NSString*)name {
    return [[[self alloc] initWithFrame:frame withColor:color name:name] autorelease];
}

- (id) initWithFrame:(CGRect)aFrame withColor:(UIColor*)aColor name:(NSString*)aName {
    self = [super init];
    if (self) {
        self.frame = aFrame;
        self.color = aColor;
        self.name = aName;
    }
    return self;
}

- (void) dealloc {
    self.color = nil;
    self.name = nil;
    [super dealloc];  
}

//----------------------------------------------------------------------------------------
#pragma mark 描画
//----------------------------------------------------------------------------------------

- (void)drawInContext:(CGContextRef)context {
    CGContextSaveGState(context);
    {
        // 描画
        CGContextSetFillColorWithColor(context, [color CGColor]);
        CGContextFillRect(context, frame);
    }
    CGContextRestoreGState(context);
}

//----------------------------------------------------------------------------------------
#pragma mark アクセシビリティサポート
//----------------------------------------------------------------------------------------

@end
