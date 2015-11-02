//
//  MySuperView.m
//  MyGraphicsApplication
//
//  Created by John MIchael Gerona on 7/24/15.
//  Copyright (c) 2015 jmdg. All rights reserved.
//

#import "MySuperView.h"
#import "MyUIView.h"

@implementation MySuperView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
    // Drawing code
//}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if(self) {
        self.view1 = [[MyUIView alloc] init];
        self.view2 = [[MyUIView alloc] init];
        self.view3 = [[MyUIView alloc] init];
        self.view4 = [[MyUIView alloc] init];
        
        [self addSubview:self.view1];
        [self addSubview:self.view2];
        [self addSubview:self.view3];
        [self addSubview:self.view4];
    }
    
    return self;
}

- (void)layoutSubviews {
    self.view1.frame = CGRectMake(self.bounds.size.width/2-self.bounds.size.width/2,
                                  self.bounds.size.height/2-self.bounds.size.height/2,
                                  self.bounds.size.width/2,
                                  self.bounds.size.height/2);
    
    self.view2.frame = CGRectMake(self.bounds.size.width/2,
                                  self.bounds.size.height/2-self.bounds.size.height/2,
                                  self.bounds.size.width/2,
                                  self.bounds.size.height/2);
    
    self.view3.frame = CGRectMake(self.bounds.size.width/2-self.bounds.size.width/2,
                                  self.bounds.size.height/2,
                                  self.bounds.size.width/2,
                                  self.bounds.size.height/2);
    
    self.view4.frame = CGRectMake(self.bounds.size.width/2,
                                  self.bounds.size.height/2,
                                  self.bounds.size.width/2,
                                  self.bounds.size.height/2);
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self setNeedsDisplay];
//}
//
//- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self setNeedsDisplay];
//}
@end
