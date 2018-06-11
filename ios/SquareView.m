//
//  Square.m
//  ReactNativeReader
//
//  Created by Kevin Amiranoff on 11/06/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "SquareView.h"

@implementation SquareView: UIView {
  RCTEventDispatcher *_eventDispatcher;
  UIView *_childView;
}


-(instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher {
  self = [super init];
  if(self != nil) {
    _eventDispatcher = eventDispatcher;
    _childView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _childView.backgroundColor = [UIColor blueColor];
  }
  
  return self;
}

-(void)layoutSubviews {
  [super layoutSubviews];
  _childView.frame = self.bounds;
  [self addSubview:_childView];
}

-(void)setText:(NSString *)text {
  if(![text isEqual:_text]) {
    _text = [text copy];
    [self addTextView:_text];
  }
}

-(void)addTextView:(NSString*)text {
  UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
  textLabel.text = _text;
  textLabel.textColor = [UIColor whiteColor];
  [textLabel sizeToFit];
  [_childView addSubview:textLabel];
  [_childView setNeedsDisplay];
}

@end
