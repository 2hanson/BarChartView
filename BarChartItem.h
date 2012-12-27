//
//  BarChart.h
//
//  Created by hanson on 12/16/12.
//  Copyright (c) 2012 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarChartItem : UIView
{
    UILabel* choiceOpt;
    UIButton* chartView;
    UIImageView* chartValue;
    UILabel* optNum;
    int optNumValue;
    UILabel* chartLabel;
    int optPercentValue;//23%
}

@property(nonatomic, strong) NSArray *colors;

-(void) setBarChart:(NSString*)choiceContent choiceOpt:(NSString*)choiceOpt textColor:(NSInteger)index Numvalue:(int)numValue PercentValue:(int)percentValue;

@end
