//
//  Book.m
//  Catalog
//
//  Created by iOS Camp on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize title = _title;
@synthesize author = _author;

+ (Book *)bookWithTitle:(NSString *)title author:(NSString *)author price:(float)price identificationNumber:(int)idNum;
{
    Book *newBook = [[Book alloc] init];
    newBook.title = title;
    newBook.author = author;
    newBook.price = price;
    newBook.identificationNumber = idNum;
    
    return newBook;
}

@end
