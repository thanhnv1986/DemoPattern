//
//  DataManager.m
//  DemoSingleton
//
//  Created by techmaster on 3/24/13.
//  Copyright (c) 2013 TechMaster. All rights reserved.
//

#import "DataManager.h"
#import "Food.h"

@implementation DataManager{
    NSMutableArray* _fullList;
}

#pragma mark Singleton Methods
//Đừng gọi trực tiếp hàm này
- (id)init {
    if (self = [super init]) {
        //_someProperty = @"Demo Singleton";
        NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
        _fullList=[[NSMutableArray alloc]initWithContentsOfFile:path];
        _foodList = [[NSMutableArray alloc]init];
        
    }
    for (NSDictionary* d in _fullList){
        Food* f=[[Food alloc]init];
        f.name = [d objectForKey:@"name"];
        f.photo = [d objectForKey:@"photo"];
        f.groupId = [NSString stringWithFormat:@"%@",[d objectForKey:@"groupId"]];
        f.rate = ((NSNumber*)[d objectForKey:@"rate"]).intValue;
        f.des =[NSString stringWithFormat:@"%@",[d objectForKey:@"description"]];
        [_foodList addObject:f];
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
