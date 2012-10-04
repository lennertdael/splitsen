//
//  DragDropBetweenViewsViewController.h
//  TestIOS
//
//  Created by Jacob von Eyben on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DragDropManager;

@interface DragDropBetweenViewsViewController : UIViewController {
@private
    UIView * _viewA;
    UIView * _viewB;
    DragDropManager *_dragDropManager;
}
@property(nonatomic, retain) UIView *viewA;
@property(nonatomic, retain) UIView *viewB;
@property(nonatomic, retain) DragDropManager *dragDropManager;


@end
