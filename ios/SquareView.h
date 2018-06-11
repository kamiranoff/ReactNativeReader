//
//  Square.h
//  ReactNativeReader
//
//  Created by Kevin Amiranoff on 11/06/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RCTEventDispatcher;

@interface SquareView : UIView
  //Define view properties here with @property
@property (nonatomic, strong) NSString * text;

// initializing with the event dispatcher allows us to communicate with JS
-(instancetype)initWithEventDispatcher:(RCTEventDispatcher *) eventDispatcher NS_DESIGNATED_INITIALIZER;

@end
