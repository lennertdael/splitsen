//
//  ViewController.m
//  splitsen
//
//  Created by Davy Leemans on 02/10/12.
//  Copyright (c) 2012 Davy Leemans. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize viewA;
@synthesize viewB;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    viewA = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
    [viewA setBackgroundColor:[UIColor greenColor]];
    viewA.tag = 1;
    viewB = [[UIView alloc] initWithFrame:CGRectMake(0, 220, 320, 200)];
    [viewB setBackgroundColor:[UIColor yellowColor]];
    viewB.tag = 2;
    
    [[self view] addSubview:viewA];
    [[self view] addSubview:viewB];
    
    //add elements to drag and drop
    UIView *dragDropView1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    UIView *dragDropView2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    
    [viewA addSubview:dragDropView1];
    [viewB addSubview:dragDropView2];
    
    [dragDropView1 setBackgroundColor:[UIColor redColor]];
    [dragDropView2 setBackgroundColor:[UIColor blueColor]];
    
    NSMutableArray *draggableSubjects = [[NSMutableArray alloc] initWithObjects:dragDropView1, dragDropView2, nil];
    NSMutableArray *droppableAreas = [[NSMutableArray alloc] initWithObjects:viewA, viewB, nil];
    // _dragDropManager = [[DragDropManager alloc] initWithDragSubjects:draggableSubjects andDropAreas:droppableAreas];
    
    //UIPanGestureRecognizer * uiTapGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:_dragDropManager action:@selector(dragging:)];
    
    //[[self view] addGestureRecognizer:uiTapGestureRecognizer];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
