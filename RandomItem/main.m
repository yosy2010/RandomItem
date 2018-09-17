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
        
        // create 10 random items and add them to the array
        for (int i = 0; i < 10; i++) {
            
            // create a new random instance of BNRItem
            BNRItem *item = [BNRItem randomItem];
            
            // add it to the array of items
            items[i] = item;
        }
        
        // now log all the random items
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        // destroy the NSMutableArray object
        items = nil;
        
        
    }
    return 0;
}
