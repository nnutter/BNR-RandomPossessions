//
//  BNRItem.h
//  RandomPossessions
//
//  Created by nnutter on 8/8/12.
//
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSDate *dateCreated;
}

@property (nonatomic) NSString *itemName;
@property (nonatomic) NSString *serialNumber;
@property (nonatomic, readonly) NSDate *dateCreated;
@property (nonatomic) int valueInDollars;

+ (id)randomItem;

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

- (id)initWithItemName:(NSString *)name
          serialNumber:(NSString *)sNumber;

@end
