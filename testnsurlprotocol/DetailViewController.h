//
//  DetailViewController.h
//  testnsurlprotocol
//
//  Created by Sam Duke on 29/04/2015.
//  Copyright (c) 2015 Airsource. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

