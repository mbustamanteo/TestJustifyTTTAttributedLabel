//
//  ViewController.m
//  TestJustify
//
//  Created by Mauricio Bustamante Ortega on 22-08-14.
//  Copyright (c) 2014 rework. All rights reserved.
//

#import "ViewController.h"
#import "JustifyTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.table.dataSource = self;
    self.table.delegate = self;
    
    [self.table reloadData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* layout = @"JustifyCell";
    
    
    JustifyTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:layout];
    
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:layout];
    }
 
    NSDictionary* attrTitle = [(NSAttributedString *)cell.title.attributedText attributesAtIndex:0
                                                                                        effectiveRange:NULL];
    
    NSDictionary* attrDescription = [(NSAttributedString *)cell.description.attributedText attributesAtIndex:0
                                                                                        effectiveRange:NULL];
    
    NSString* dummyText = @"asd asd asd sadas dasdasdasdasdasdasd sad asdsadas asd asd sad asd sad asd asd a";
    
    cell.description.attributedText = [[NSAttributedString alloc] initWithString:dummyText
                                                                      attributes:attrDescription];
    
    cell.title.attributedText = [[NSAttributedString alloc] initWithString:dummyText
                                                                    attributes:attrTitle];
    
    
    
    return cell;
}

@end
