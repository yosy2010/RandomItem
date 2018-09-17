//
//  BNRItem.m
//  RandomItem
//
//  Created by YASSER ALTAMIMI on 16/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

// class method
+ (instancetype)randomItem
{
    // imnutable array for adjectives
    NSArray *adjectives = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    // imutable array of nouns
    NSArray *nouns = @[@"Bear", @"Spork", @"Mac"];
    
    // get a random index in a range that doesn't exceed the size of the array
    NSInteger adjectiveIndex = arc4random() % [adjectives count];
    NSInteger nounsIndex = arc4random() % [nouns count];
    
    // create a string out of the two random adjective and noun
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            adjectives [adjectiveIndex],
                            nouns [nounsIndex]];
    
    // create a random value in dollars
    int randomValue = arc4random() % 100;
    
    // create a random serial number
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                   '0' + arc4random() % 10,
                                   'A' + arc4random() % 26,
                                   '0' + arc4random() % 10,
                                   'A' + arc4random() % 26,
                                   '0' + arc4random() % 10];
    
    // create a new item out of these values an return it
    BNRItem *randomItem = [[self alloc] initWithItemName:randomName
                                          valueInDollars:randomValue
                                            serilaNumber:randomSerialNumber];
    
    return randomItem;
}

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

// override set method for containedItem
- (void)setContainedItem:(BNRItem *)containedItem
{
    _containedItem = containedItem;
    self.containedItem.container = self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ (%@): worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
}

- (void)dealloc
{
    NSLog(@"Destoied: %@", self);
}

@end








