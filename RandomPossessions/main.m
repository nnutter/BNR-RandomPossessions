//
//  main.m
//  RandomPossessions
//
//  Created by nnutter on 8/8/12.
//
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRContainer *c = [BNRContainer randomItem];
        for (int i = 0; i < 5; i++) {
            BNRItem *i = [BNRItem randomItem];
            [c addSubitem:i];
        }

        BNRContainer *c2 = [BNRContainer randomItem];
        for (int i = 0; i < 5; i++) {
            BNRItem *i = [BNRItem randomItem];
            [c2 addSubitem:i];
        }
        
        [c addSubitem:c2];
        
        NSLog(@"%@", c);
        
    }
    return 0;
}

