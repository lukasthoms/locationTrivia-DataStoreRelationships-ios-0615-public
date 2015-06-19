//
//  FISNewTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Lukas Thoms on 6/18/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISNewTriviaViewController.h"
#import "FISLocationsDataStore.h"

@interface FISNewTriviaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *triviaField;

- (IBAction)saveButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end

@implementation FISNewTriviaViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)saveButtonPressed:(id)sender {
    FISLocationsDataStore *ds = [FISLocationsDataStore sharedLocationsDataStore];
    FISTrivia *newTrivia = [[FISTrivia alloc] initWithContent:self.triviaField.text Likes:0];
    [[ds.locations[self.selectedRow] trivia] addObject:newTrivia];
    [self dismissViewControllerAnimated:YES completion:nil];
    return;
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    return;
}
@end
