//
//  ExampleCell.m
//  TableViewFactory
//
//  Created by Denys Telezhkin on 10/1/12.
//  Copyright (c) 2012 Denys Telezhkin. All rights reserved.
//
#import "ExampleCell.h"

@interface ExampleCell()
@property (nonatomic,retain) Example * exampleModel;
@end

@implementation ExampleCell

-(void)updateWithModel:(id)model
{
    self.exampleModel = model;
    
    self.textLabel.text = self.exampleModel.text;
    self.detailTextLabel.text = self.exampleModel.details;
}

-(void)dealloc
{
    self.exampleModel = nil;
    [super dealloc];
}

@end