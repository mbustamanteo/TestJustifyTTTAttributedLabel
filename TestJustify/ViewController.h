//
//  ViewController.h
//  TestJustify
//
//  Created by Mauricio Bustamante Ortega on 22-08-14.
//  Copyright (c) 2014 rework. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) IBOutlet UITableView* table;

@end
