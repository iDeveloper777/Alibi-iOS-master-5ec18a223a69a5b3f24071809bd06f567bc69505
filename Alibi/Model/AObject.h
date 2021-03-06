//
//  AObject.h
//  Alibi
//
//  Created by Matias Willand on 6/20/2015.
//  Copyright (c) 2013 Planet 1107. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AObject : NSObject

- (NSString*)stringFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (double)doubleFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (float)floatFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (int)integerFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (long)longFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (long long)longLongFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (NSDate*)dateFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (BOOL)boolFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;
- (NSDictionary*)dictionaryFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey ;
- (NSArray*)arrayFromDictionary:(NSDictionary*)newDictionary forKey:(NSString*)newKey;

@end
