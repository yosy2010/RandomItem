//
//  BNRItem.m
//  RandomItem
//
//  Created by YASSER ALTAMIMI on 16/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

// initilizers
// designated:
- (instancetype)initWithItemName:(NSString *)itemName valueInDollars:(int)valueInDollars serilaNumber:(NSString *)serialNumber
{
    // initilize it bu calling the super init method
    self = [super init];
    
    // if it is initilized correctly, then give it all the needed values
    if (self) {
        _itemName = itemName;
        _valueInDollars = valueInDollars;
        _serialNumber = serialNumber;
        _dateCreated = [[NSDate alloc] init];
    }
    
    
    return self;
}

// initilizer with name only
- (instancetype)initWithItemName:(NSString *)itemName
{
    self = [self initWithItemName:itemName valueInDollars:0 serilaNumber:@""];
    return self;
}

// override the super init method
- (instancetype)init
{
    // when init is called, we use a default value for the itemName and return the call to initWithName method, which give default values to the other needed info about the object being created, then the designated initilizer set all the default values
    return [self initWithItemName:@"Item"];
}

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








