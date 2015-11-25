//
//  RFCollectionViewCell.m
//  RFCircleCollectionView
//
//  Created by Arvin on 15/11/25.
//  Copyright © 2015年 mobi.refine. All rights reserved.
//

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
    self.layer.borderWidth = 1;
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.headImage.layer.cornerRadius = self.headImage.frame.size.width / 2;
    self.follow.layer.cornerRadius = 4;
}

@end
