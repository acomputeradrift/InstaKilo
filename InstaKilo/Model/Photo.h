//
//  Photo.h
//  InstaKilo
//
//  Created by Jamie on 2018-08-15.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Photo : NSObject

@property (nonatomic, strong) NSString* photoName;
@property (nonatomic, strong) NSString* subject;
@property (nonatomic, strong) NSString* location;
@property (nonatomic, strong) UIImage* image;

- (instancetype)initWithphotoName: (NSString*)photoName andSubject: (NSString*)subject andLocation: (NSString*)location andImage: (UIImage*)image;

@end
