//
//  FISTriviaTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Joe Burgess on 6/20/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISTriviaTableViewController : UITableViewController
@property (nonatomic) NSInteger selectedRow;
@property (strong, nonatomic) NSArray *trivia;

@end
