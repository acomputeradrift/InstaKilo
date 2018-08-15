//
//  Photo.h
//  InstaKilo
//
//  Created by Jamie on 2018-08-15.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* subject;
@property (nonatomic, strong) NSString* location;

- (instancetype)initWithName: (NSString*)name andSubject: (NSString*)subject andLocation: (NSString*)location;

@end
