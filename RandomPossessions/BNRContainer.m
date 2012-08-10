//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by nnutter on 8/8/12.
//
//

#import "BNRContainer.h"

@implementation BNRContainer

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber
{
    self = [super initWithItemName:name valueInDollars:value serialNumber:sNumber];
    
    if (self) {
        subitems = [NSMutableArray new];
    }
    
    return self;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ ($%d)",
                                   [self itemName],
                                   [self totalValueInDollars]];

    for (BNRItem *item in subitems) {
        descriptionString = [descriptionString stringByAppendingFormat:@"; %@", item];
    }
    descriptionString = [descriptionString stringByAppendingString:@"\n"];
    
    
    return descriptionString;
}

- (void)addSubitem:(id)item
{
    [subitems addObject:item];
}

- (int)totalValueInDollars
{
    int totalValueInDollars = [self valueInDollars];
    for (BNRItem *item in subitems) {
        totalValueInDollars += [item valueInDollars];
    }
    return totalValueInDollars;
}

@end
