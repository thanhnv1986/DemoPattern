//
//  DataManager.h
//  DemoSingleton
//
//  Created by techmaster on 3/24/13.
//  Copyright (c) 2013 TechMaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject 
@property (nonatomic, strong) NSMutableArray *foodList;

+ (id)sharedManager;
@end