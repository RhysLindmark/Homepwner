//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Rhys Lindmark on 6/17/14.
//  Copyright (c) 2014 Rhys Lindmark. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore ()
@property (nonatomic) NSMutableArray *privateItems;
@end

@implementation BNRItemStore

+ (instancetype)sharedStore
{
    static BNRItemStore *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc]initPrivate];
    });
    return sharedManager;
}

- (instancetype)init
{
    [NSException raise:@"Singleton" format:@"Use +[BNRItemStore sharedStore]"];
    return nil;
}

- (instancetype)initPrivate
{
    self = [super init];
    if (self)
    {
        _privateItems = [NSMutableArray new];
    }
    return self;
}

- (NSArray *)allItems
{
    return [_privateItems copy];
}

- (BNRItem *)createItem
{
    BNRItem *item = [BNRItem randomItem];
    [_privateItems addObject:item];
    return item;
}

@end
