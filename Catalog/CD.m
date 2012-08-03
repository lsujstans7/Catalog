//
//  CD.m
//  Catalog
//
//  Created by iOS Camp on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CD.h"

@implementation CD

@synthesize artist = _artist;
@synthesize label = _label;

+ (CD *)cdWithArtist:(NSString *)artist label:(NSString *)label price:(float)price identificationNumber:(float)idNum;
{
    CD *newCD = [[CD alloc] init];
    newCD.artist = artist;
    newCD.label = label;
    newCD.price = price;
    newCD.identificationNumber = idNum;
    
    return newCD;
}

@end
