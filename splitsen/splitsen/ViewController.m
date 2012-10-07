//
//  DragDropBetweenViewsViewController.m
//  TestIOS
//
//  Created by Jacob von Eyben on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "DragDropManager.h"

@implementation ViewController

@synthesize labelQuestion = _labelQuestion;
@synthesize viewA = _viewA;
@synthesize viewB = _viewB;
@synthesize dragDropManager = _dragDropManager;
@synthesize labelAnswer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView
 {
 }
 */

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labelQuestion = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    _labelQuestion.text=@"5 kan je splitsen in 3 en ";
     
    _viewA = [[UIView alloc] initWithFrame:CGRectMake(200, 0, 50, 50)];
    [_viewA setBackgroundColor:[UIColor greenColor]];
    _viewA.tag = 1;
    //_viewB = [[UIView alloc] initWithFrame:CGRectMake(0, 220, 320, 200)];
    [_viewB setBackgroundColor:[UIColor yellowColor]];
    //_viewB.tag = 2;
    
    [[self view] addSubview:_viewA];
    //[[self view] addSubview:_viewB];
    [[self view] addSubview:_labelQuestion];
    //[[self view] addSubview:_viewB];
    
    //add elements to drag and drop
    UIView *dragDropView1 = [[UIView alloc] initWithFrame:CGRectMake(-200, 100, 50, 50)];
    UIView *dragDropView2 = [[UIView alloc] initWithFrame:CGRectMake(-145, 100, 50, 50)];
    [_viewA addSubview:dragDropView1];
    [_viewA addSubview:dragDropView2];
    [dragDropView1 setBackgroundColor:[UIColor redColor]];
    [dragDropView2 setBackgroundColor:[UIColor blueColor]];
    
    NSMutableArray *draggableSubjects = [[NSMutableArray alloc] initWithObjects:dragDropView1, dragDropView2, nil];
    NSMutableArray *droppableAreas = [[NSMutableArray alloc] initWithObjects:_viewA, _viewB, nil];
    _dragDropManager = [[DragDropManager alloc] initWithDragSubjects:draggableSubjects andDropAreas:droppableAreas];
    
    UIPanGestureRecognizer * uiTapGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:_dragDropManager action:@selector(dragging:)];
    
    //[[self.view] addGestureRecognizer:uiTapGestureRecognizer];
    [self.view addGestureRecognizer:uiTapGestureRecognizer];

}

- (void)viewDidUnload {
    [self setLabelAnswer:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end