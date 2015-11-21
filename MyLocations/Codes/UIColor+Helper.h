//
//  UIColor+Helper.h
//  MyLocations
//
//  Created by IssacCZ on 11/21/15.
//  Copyright © 2015 Issac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Helper)

+ (UIColor*)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*)colorWithHex:(NSInteger)hexValue;
+ (UIColor *)randomColor;

- (NSString*) hexFromUIColor;

@end
