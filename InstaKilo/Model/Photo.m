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

- (instancetype)initWithphotoName: (NSString*)photoName andSubject: (NSString*)subject andLocation: (NSString*)location andImage: (UIImage*)image
{
    self = [super init];
    if (self) {
        _photoName = photoName;
        _subject = subject;
        _location = location;
        _image = image;
    }
    return self;
}

@end
