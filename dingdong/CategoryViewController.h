//
//  CategoryViewController.h
//  dingdong
//
//  Created by BSA Univ4 on 04/02/14.
//  Copyright (c) 2014 BSA Univ4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface CategoryViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *addcategory;
@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)savebutton:(id)sender;
@end
