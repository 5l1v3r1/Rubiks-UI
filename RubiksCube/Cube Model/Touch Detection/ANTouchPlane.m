//
//  ANTouchPiece.m
//  RubiksCube
//
//  Created by Alex Nichol on 4/7/13.
//  Copyright (c) 2013 Alex Nichol. All rights reserved.
//

#import "ANTouchPlane.h"

@implementation ANTouchPlane

@synthesize pieceType;
@synthesize axis;
@synthesize pieceIndex;
@synthesize userData;

- (id)initWithPieceType:(ANTouchPieceType)type axis:(int)theAxis index:(int)theIndex {
    if (self = [super init]) {
        pieceType = type;
        axis = theAxis;
        pieceIndex = theIndex;
    }
    return self;
}

- (GLKVector3)characteristicColor {
    int red = pieceType * 70;
    int green = axis * 70;
    int blue = pieceIndex * 20;
    return GLKVector3Make(red, green, blue);
}

@end
