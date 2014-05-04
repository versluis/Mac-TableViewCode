//
//  TableController.h
//  Mac TableViewCode
//
//  Created by Jay Versluis on 04/05/2014.
//  Copyright (c) 2014 Pinkstone Pictures LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableController : NSObject <NSTableViewDataSource>

@property (nonatomic, strong) NSArray *numbers;
@property (nonatomic, strong) NSArray *numberCodes;

@end
