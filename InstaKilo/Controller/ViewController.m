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
#import "PhotoCollectionReusableView.h"



@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

//private properties

@property (nonatomic, strong) NSArray<NSArray <Photo*> *> *photosByLocation;
@property (nonatomic, strong) NSArray<NSArray <Photo*> *> *photosBySubject;
@property (nonatomic, strong) NSArray<NSArray <Photo*> *> *photosArray;
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
    Photo *photo1 = [[Photo alloc] initWithphotoName:@"Photo1" andSubject:@"Surfing" andLocation:@"Hawaii" andImage:[UIImage imageNamed:@"2d3d3bef"]];
    Photo *photo2 = [[Photo alloc] initWithphotoName:@"Photo2" andSubject:@"Drowning" andLocation:@"Hawaii" andImage:[UIImage imageNamed:@"50a8f04ac8f5fc40ab20d6274b597844"]];
    Photo *photo3 = [[Photo alloc] initWithphotoName:@"Photo3" andSubject:@"Surfing" andLocation:@"Hawaii" andImage:[UIImage imageNamed:@"856542_dive-surf-girl-wallpapers-hd-free-desktop-backgrounds-2016-in_4288x2848_h"]];
    Photo *photo4 = [[Photo alloc] initWithphotoName:@"Photo4" andSubject:@"Drowning" andLocation:@"Hawaii" andImage:[UIImage imageNamed:@"FF11"]];
    Photo *photo5 = [[Photo alloc] initWithphotoName:@"Photo5" andSubject:@"Surfing" andLocation:@"Hawaii" andImage:[UIImage imageNamed:@"Sebastian.Imizcoz.indoseb"]];
    Photo *photo6 = [[Photo alloc] initWithphotoName:@"Photo6" andSubject:@"Drowning" andLocation:@"Nicaragua" andImage:[UIImage imageNamed:@"surfgirl"]];
    Photo *photo7 = [[Photo alloc] initWithphotoName:@"Photo7" andSubject:@"Surfing" andLocation:@"Nicaragua" andImage:[UIImage imageNamed:@"tumblr_p4mlkqEO8J1sljr6oo1_500"]];
    Photo *photo8 = [[Photo alloc] initWithphotoName:@"Photo8" andSubject:@"Drowning" andLocation:@"Nicaragua" andImage:[UIImage imageNamed:@"tumblr_static_tumblr_static__640"]];
    Photo *photo9 = [[Photo alloc] initWithphotoName:@"Photo9" andSubject:@"Surfing" andLocation:@"Nicaragua" andImage:[UIImage imageNamed:@"Vans-2015-US-Open-of-Surfing_PatGudauskasn3hq"]];
    Photo *photo10 = [[Photo alloc] initWithphotoName:@"Photo10" andSubject:@"Drowning" andLocation:@"Nicaragua" andImage:[UIImage imageNamed:@"xlgPK"]];
    self.photosByLocation = @[@[photo1, photo2, photo3, photo4,photo5],@[ photo6,photo7, photo8, photo9,photo10]]; //2 arrays in photo by location   self.photoByLco[0][4] section item
    self.photosBySubject = @[@[photo1, photo3, photo5, photo7,photo9],@[ photo2,photo4, photo6, photo8,photo10]]; // 2 arrays
    self.photosArray = self.photosByLocation;
    
}
//
//
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCollectionViewCell" forIndexPath:indexPath];
    //get item in array at index
    Photo *photo = self.photosArray[indexPath.section][indexPath.item];//
    cell.imageView.image = photo.image;
    //set cell image
    cell.nameLabel.text = photo.photoName;
    //set title
    //set subject
    //set location
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    PhotoCollectionReusableView *header = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        header = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                    withReuseIdentifier:@"PhotoCollectionReusableView"
                                                           forIndexPath:indexPath];
        
        if (self.photosArray == self.photosBySubject){
        header.UILabelSectionName.text = self.photosArray[indexPath.section][indexPath.item].subject;
        }else{
        header.UILabelSectionName.text = self.photosArray[indexPath.section][indexPath.item].location;
        }
    }
    return header;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    //if button = subject then return self.photosBySubject.count
    //else return self.photosByLocation.count
    return self.photosArray.count;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    if (section == 0){
//        return self.photosArray[0].count;
//    }
//    return self.photosArray[1].count;
    return self.photosArray[section].count;
}

@end

