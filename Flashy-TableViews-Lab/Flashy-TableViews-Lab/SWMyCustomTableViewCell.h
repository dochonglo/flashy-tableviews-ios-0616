//
//  SWMyCustomTableViewCell.h
//  Flashy-TableViews-Lab
//
//  Created by Ismael Barry on 7/1/16.
//  Copyright © 2016 Ismael Barry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SWTableViewCell.h>

// The delegate SWTableViewCellDelegate is used by the developer to find out which button was pressed. There are five methods:
@protocol SWMyCustomTableViewCellMethods <NSObject>

// Click event on left utility button:
- (void)swipeableTableViewCell:(SWTableViewCell *)cell didTriggerLeftUtilityButtonWithIndex:(NSInteger)index;

// click event on right utility button
- (void)swipeableTableViewCell:(SWTableViewCell *)cell didTriggerRightUtilityButtonWithIndex:(NSInteger)index;

// utility button open/close event
- (void)swipeableTableViewCell:(SWTableViewCell *)cell scrollingToState:(SWCellState)state;

// prevent multiple cells from showing utilty buttons simultaneously
- (BOOL)swipeableTableViewCellShouldHideUtilityButtonsOnSwipe:(SWTableViewCell *)cell;

// prevent cell(s) from displaying left/right utility buttons
- (BOOL)swipeableTableViewCell:(SWTableViewCell *)cell canSwipeToState:(SWCellState)state;

@end


// When writing your custom table view cell's code, make sure your cell is a subclass of SWTableViewCell:
@interface SWMyCustomTableViewCell : SWTableViewCell <SWTableViewCellDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *customImageView;
@property (weak, nonatomic) IBOutlet UILabel *customLabel;

@end
