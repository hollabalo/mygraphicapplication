//
//  MyUIView.m
//  MyGraphicsApplication
//
//  Created by John MIchael Gerona on 7/24/15.
//  Copyright (c) 2015 jmdg. All rights reserved.
//

#import "MyUIView.h"

@implementation MyUIView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    if(self.touched == 0) {
        CGContextSetRGBFillColor(c, 9, 9, 1, 1.0);
        CGContextSetRGBStrokeColor(c, 0, 1, 0, 1.0);
        CGContextFillEllipseInRect(c, self.bounds);
        CGContextStrokeEllipseInRect(c, self.bounds);
    }
    else {
        CGContextSetRGBFillColor(c, 0, 0, 1, 1.0);
        CGContextSetRGBStrokeColor(c, 0, 1, 0, 1.0);
        CGContextFillEllipseInRect(c, self.bounds);
        CGContextStrokeEllipseInRect(c, self.bounds);
    }
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.touched = 1;
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.touched = 0;
    [self setNeedsDisplay];
}

@end
