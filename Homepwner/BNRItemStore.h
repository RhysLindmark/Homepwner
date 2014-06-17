//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Rhys Lindmark on 6/17/14.
//  Copyright (c) 2014 Rhys Lindmark. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly, copy) NSArray *allItems;

+ (instancetype)sharedStore;
- (BNRItem *)createItem;

@end
