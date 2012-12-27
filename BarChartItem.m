//
//  BarChart.m
//
//  Created by hanson on 12/16/12.
//  Copyright (c) 2012 com. All rights reserved.
//

#import "BarChartItem.h"

#define DEF_FONT_NAME @"Helvetica"
#define FONT_DEF_SIZE(s) [UIFont fontWithName:DEF_FONT_NAME size:s]

@implementation BarChartItem

@synthesize colors = _colors;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //choice opt
        choiceOpt = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        choiceOpt.backgroundColor = [UIColor clearColor];
        choiceOpt.textColor = [UIColor blueColor];
        choiceOpt.font = FONT_DEF_SIZE(13);
        choiceOpt.numberOfLines = 1;
        choiceOpt.textAlignment = UITextAlignmentCenter;
        choiceOpt.adjustsFontSizeToFitWidth = YES;
        [self addSubview:choiceOpt];
        
        //chart label
        chartLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 306, 20)];
        chartLabel.backgroundColor = [UIColor clearColor];
        chartLabel.font = FONT_DEF_SIZE(13);
        chartLabel.numberOfLines = 1;
        chartLabel.textAlignment = UITextAlignmentLeft;
        chartLabel.adjustsFontSizeToFitWidth = YES;
        [self addSubview:chartLabel];

        //chart view
        chartView = [UIButton buttonWithType:UIButtonTypeCustom];
        chartView.frame = CGRectMake(10, 20, 186, 20);
        [chartView setEnabled:FALSE];
        [chartView setBackgroundImage:[UIImage imageNamed:@"bg3.png"] forState:UIControlStateNormal];
        [self addSubview:chartView];
        
        //chart value
        //chartValue = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2btb.png"]];
        chartValue = [[UIImageView alloc] init];
        [self addSubview:chartValue];

        //value of this choice opt
        optNum = [[UILabel alloc] initWithFrame:CGRectMake(200, 13, 112, 30)];
        optNum.backgroundColor = [UIColor clearColor];
        optNum.textColor = [UIColor blueColor];
        optNum.font = FONT_DEF_SIZE(17);
        optNum.numberOfLines = 1;
        optNum.textAlignment = UITextAlignmentLeft;
        optNum.adjustsFontSizeToFitWidth = YES;
        
        [self addSubview:optNum];
        
        self.colors =[NSArray arrayWithObjects:
                           [UIColor colorWithRed:246/255.0 green:155/255.0 blue:0/255.0 alpha:1],
                           [UIColor colorWithRed:129/255.0 green:195/255.0 blue:29/255.0 alpha:1],
                           [UIColor colorWithRed:62/255.0 green:173/255.0 blue:219/255.0 alpha:1],
                           [UIColor colorWithRed:229/255.0 green:66/255.0 blue:115/255.0 alpha:1],
                           [UIColor colorWithRed:148/255.0 green:141/255.0 blue:139/255.0 alpha:1],
                            [UIColor colorWithRed:8/255.0 green:41/255.0 blue:39/255.0 alpha:1],
                            [UIColor colorWithRed:14/255.0 green:14/255.0 blue:13/255.0 alpha:1],
                            [UIColor colorWithRed:18/255.0 green:11/255.0 blue:39/255.0 alpha:1],
                            [UIColor colorWithRed:48/255.0 green:4/255.0 blue:19/255.0 alpha:1],nil];
    }
    return self;
}

-(void) setBarChart:(NSString*)choiceContent choiceOpt:(NSString*)newOpt textColor:(NSInteger)index Numvalue:(int)numValue PercentValue:(int)percentValue
{
    UIColor* textColor = [self.colors objectAtIndex:(index % self.colors.count)];
    
    choiceOpt.text = newOpt;
    choiceOpt.textColor = textColor;
    
    chartLabel.text = choiceContent;
    chartLabel.textColor = textColor;
    
    optNum.text = [NSString stringWithFormat:@"%d(%d%%)", numValue, percentValue];
    optNum.textColor = textColor;
    
    chartValue.frame = CGRectMake(12, 22, percentValue*1.0*(186-2)/100, 16);
    [chartValue setBackgroundColor:textColor];
}

@end
