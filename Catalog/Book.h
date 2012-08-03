//
//  Book.h
//  Catalog
//
//  Created by iOS Camp on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Item.h"

@interface Book : Item

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;

+ (Book *)bookWithTitle:(NSString *)title author:(NSString *)author price:(float)price identificationNumber:(int)idNum;

@end
