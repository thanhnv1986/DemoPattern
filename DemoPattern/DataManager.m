//
//  DataManager.m
//  DemoSingleton
//
//  Created by techmaster on 3/24/13.
//  Copyright (c) 2013 TechMaster. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

#pragma mark Singleton Methods
//Đừng gọi trực tiếp hàm này
- (id)init {
    if (self = [super init]) {
        //_someProperty = @"Demo Singleton";
        NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
        _foodList=[[NSMutableArray alloc]initWithContentsOfFile:path];
    }
    return self;
}

//Mà gọi class method này để lấy singleton của Class
+ (id)sharedManager {
    static DataManager *sharedDataManager = nil;
    static dispatch_once_t dispatchOnce;
    
    dispatch_once(&dispatchOnce, ^{
        sharedDataManager = [self new];
    });
    return sharedDataManager;
}
@end
