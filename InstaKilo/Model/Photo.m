//
//  Photo.m
//  InstaKilo
//
//  Created by Jamie on 2018-08-15.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Photo.h"

@interface Photo ()
//private properties



@end

@implementation Photo

- (instancetype)initWithName: (NSString*)name andSubject: (NSString*)subject andLocation: (NSString*)location
{
    self = [super init];
    if (self) {
        _name = name;
        _subject = subject;
        _location = location;
    }
    return self;
}

@end
