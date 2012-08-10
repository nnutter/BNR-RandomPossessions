//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by nnutter on 8/8/12.
//
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *subitems;
}

- (void)addSubitem:(id)item;

@end
