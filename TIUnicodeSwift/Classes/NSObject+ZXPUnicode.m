//
//  NSObject+ZXPUnicode.m
//  LQGUnicode
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

#import "NSObject+ZXPUnicode.h"

@implementation NSObject (ZXPUnicode)

+ (NSString *)stringByReplaceUnicode:(NSString *)string {
    NSMutableString *convertedString = [string mutableCopy];
    [convertedString replaceOccurrencesOfString:@"\\U" withString:@"\\u" options:0 range:NSMakeRange(0, convertedString.length)];
    CFStringRef transform = CFSTR("Any-Hex/Java");
    CFStringTransform((__bridge CFMutableStringRef)convertedString, NULL, transform, YES);
    return convertedString;
}

@end
