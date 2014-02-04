//
//  CategoryViewController.m
//  dingdong
//
//  Created by BSA Univ4 on 04/02/14.
//  Copyright (c) 2014 BSA Univ4. All rights reserved.
//

#import "CategoryViewController.h"
#import "AppDelegate.h"
static int tempid=0;
@interface CategoryViewController ()
{
    NSManagedObjectContext *context;
    
    //NSManagedObjectContext *managedObjectContext;
    
}

@end






@implementation CategoryViewController
@synthesize addcategory;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self addcategory]setDelegate:self ];
    AppDelegate *appdelegate=[[UIApplication sharedApplication]delegate];
    context=[appdelegate managedObjectContext];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)savebutton:(id)sender {
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Categories" inManagedObjectContext:context];
    
    
    NSManagedObject *newcategories=[[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:context];
   NSManagedObject *moid= 
    
    [newcategories setValue:self.addcategory.text forKey:@"category"];
    
    [newcategories setValue:[NSNumber numberWithInt:++tempid] forKey:@"id"];

    
    
    NSError *error;
    
    [context save:&error];
    self.display.text=@"category_added";
    
    
}

@end
