//
//  ViewController.m
//  InstaKilo
//
//  Created by Jamie on 2018-08-15.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ViewController.h"
#import "Photo.h"
#import "PhotoCollectionViewCell.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

//private properties

@property (nonatomic, strong) NSArray<Photo*> *photos;
@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpPhotoGallery];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }


- (void) setUpPhotoGallery {
    Photo *photo1 = [[Photo alloc] initWithName:@"Photo1" andSubject:@"Surfing" andLocation:@"Nicaragua"];
    Photo *photo2 = [[Photo alloc] initWithName:@"Photo2" andSubject:@"Surfing" andLocation:@"Hawaii"];
    Photo *photo3 = [[Photo alloc] initWithName:@"Photo3" andSubject:@"Surfing" andLocation:@"Nicaragua"];
    Photo *photo4 = [[Photo alloc] initWithName:@"Photo4" andSubject:@"Drowning" andLocation:@"Hawaii"];
    Photo *photo5 = [[Photo alloc] initWithName:@"Photo5" andSubject:@"Surfing" andLocation:@"Nicaragua"];
    Photo *photo6 = [[Photo alloc] initWithName:@"Photo6" andSubject:@"Drowning" andLocation:@"Nicaragua"];
    Photo *photo7 = [[Photo alloc] initWithName:@"Photo7" andSubject:@"Surfing" andLocation:@"Hawaii"];
    Photo *photo8 = [[Photo alloc] initWithName:@"Photo8" andSubject:@"Drowning" andLocation:@"Nicaragua"];
    Photo *photo9 = [[Photo alloc] initWithName:@"Photo9" andSubject:@"Drowning" andLocation:@"Hawaii"];
    Photo *photo10 = [[Photo alloc] initWithName:@"Photo10" andSubject:@"Drowning" andLocation:@"Hawaii"];
    self.photos = @[photo2, photo3, photo4,photo5, photo6, photo1,photo7, photo8, photo9,photo10];
}
//
//
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCollectionViewCell" forIndexPath:indexPath];
    //get item in array at index
    Photo *photo = self.photos[indexPath.item];
    cell.imageView.image = [UIImage imageNamed:photo.name];
    //set cell image
    cell.nameLabel.text = photo.name;
    //set title
    //set subject
    //set location
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photos.count;
}
@end

