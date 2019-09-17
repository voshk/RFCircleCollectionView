//
//  RFCollectionViewCell.m
//  RFCircleCollectionView
//
//  Created by Arvin on 15/11/25.
//  Copyright © 2015年 mobi.refine. All rights reserved.
//  https://github.com/voshk/RFCircleCollectionView

#import "RFCollectionViewCell.h"

@interface RFCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *topImage;
@property (weak, nonatomic) IBOutlet UIImageView *headImage;
@property (weak, nonatomic) IBOutlet UILabel *follow;

@end

@implementation RFCollectionViewCell

- (void)awakeFromNib
{
    self.layer.cornerRadius = 4;
    self.layer.borderWidth = 0.5;
    self.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.layer.shadowOpacity = 0.8;
    self.layer.shadowOffset = CGSizeMake(-1, 2);
    self.layer.shadowRadius = 3;
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.headImage.layer.cornerRadius = self.headImage.frame.size.width / 2;
    self.follow.layer.cornerRadius = 4;
}

@end
