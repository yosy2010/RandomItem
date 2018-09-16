//
//  main.m
//  RandomItem
//
//  Created by YASSER ALTAMIMI on 16/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // create NSMutableArray
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // add objects to the array: strings ("One", "Two", "Three")
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // add object at index 0: string "Zero"
        [items insertObject:@"Zero" atIndex:0];
        
        // log every item in the array
        for (NSString *string in items) {
            NSLog(@"%@", string);
        }
        
        // create an instance of BNRItem, set some instance variables and log its description to the console
        BNRItem *item = [[BNRItem alloc] init];
        
        item.itemName = @"Red Sofa";
        item.serialNumber = @"A1B2C";
        item.valueInDollars = 100;
        
        NSLog(@"%@", item);
        
        // destroy the NSMutableArray object
        items = nil;
        
        
    }
    return 0;
}
