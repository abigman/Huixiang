//
//  PieceCell.m
//  Huixiang
//
//  Created by ltebean on 13-7-3.
//  Copyright (c) 2013年 ltebean. All rights reserved.
//

#import "PieceCell.h"

@interface PieceCell()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end


@implementation PieceCell

-(void)setPiece:(NSDictionary *)piece
{
    _piece=piece;
    [self updateUI];
}

-(void)updateUI
{
    CGSize size=[self measureTextHeight:self.piece[@"content"] fontSize:18 constrainedToSize:CGSizeMake(250, 350)];
    self.label.bounds=CGRectMake(self.label.bounds.origin.x,self.label.bounds.origin.y, size.width+50, size.height+40);
    self.label.text=self.piece[@"content"];

}

-(CGSize)measureTextHeight:(NSString*)text fontSize:(CGFloat)fontSize constrainedToSize:(CGSize)constrainedToSize
{
    CGSize mTempSize = [text sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:constrainedToSize lineBreakMode:UILineBreakModeWordWrap];
    return mTempSize;
}

@end
