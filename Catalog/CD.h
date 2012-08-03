//
//  CD.h
//  Catalog
//
//  Created by iOS Camp on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Item.h"

@interface CD : Item

@property (nonatomic, strong) NSString *artist;
@property (nonatomic, strong) NSString *label;

+ (CD *)cdWithArtist:(NSString *)artist label:(NSString *)label price:(float)price identificationNumber:(float)idNum;


@end
