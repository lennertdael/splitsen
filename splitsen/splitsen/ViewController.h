//
//  ViewController.h
//  splitsen
//
//  Created by Davy Leemans on 02/10/12.
//  Copyright (c) 2012 Davy Leemans. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DragDropManager;

@interface ViewController : UIViewController {
@private
    UILabel * _labelQuestion;
    UIView * _viewA;
    UIView * _viewB;
    DragDropManager *_dragDropManager;
}

@property(nonatomic, retain) UILabel *labelQuestion;
@property(nonatomic, retain) UIView *viewA;
@property(nonatomic, retain) UIView *viewB;
@property(nonatomic, retain) DragDropManager *dragDropManager;

@property (weak, nonatomic) IBOutlet UILabel *labelAnswer;

@end
