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
        
        BNRItem *backPack = [[BNRItem alloc] initWithItemName:@"BackPack"];
        [items addObject:backPack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backPack.containedItem = calculator;
        
        backPack = nil;
        calculator = nil;
        
        // now log all the random items
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        // setting items to nil
        NSLog(@"setting items to nil");
        
        // destroy the NSMutableArray object
        items = nil;
        
        
    }
    return 0;
}
