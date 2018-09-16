//
//  BNRItem.m
//  RandomItem
//
//  Created by YASSER ALTAMIMI on 16/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

// accessors
- (void)setItemName:(NSString *)name
{
    _itemName = name;
}

- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)serialNumber
{
    _serialNumber = serialNumber;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)valueInDollars
{
    _valueInDollars = valueInDollars;
}

- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ (%@): worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
}

@end








