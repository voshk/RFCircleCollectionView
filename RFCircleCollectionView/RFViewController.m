
//
//  RFViewController.m
//  RFCircleCollectionView
//
//  Created by Arvin on 15/11/25.
//  Copyright © 2015年 mobi.refine. All rights reserved.
//  https://github.com/sensejump/RFCircleCollectionView

#import "RFViewController.h"
#import "RFCollectionViewCell.h"
#import "RFLayout.h"

static NSString *RFIdentifier = @"RFIdentifier";

@interface RFViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@end

@implementation RFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [self.myCollectionView registerNib:[UINib nibWithNibName:@"RFCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:RFIdentifier];
    self.myCollectionView.collectionViewLayout = [[RFLayout alloc] init];
    self.myCollectionView.backgroundColor = [UIColor clearColor];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    RFCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:RFIdentifier forIndexPath:indexPath];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
