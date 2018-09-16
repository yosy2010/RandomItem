//
//  BNRItem.h
//  RandomItem
//
//  Created by YASSER ALTAMIMI on 16/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

// instance variables
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

// methods
-(void) setItemName: (NSString *) name;
-(NSString *) itemName;

-(void) setSerialNumber: (NSString *) serialNumber;
-(NSString *) serialNumber;

-(void) setValueInDollars: (int) valueInDollars;
-(int) valueInDollars;

-(NSDate *) dateCreated;

@end