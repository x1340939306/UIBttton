//
//  UIButton+Add.m
//  UIButton
//
//  Created by 徐强 on 2017/12/24.
//  Copyright © 2017年 徐强. All rights reserved.
//

#import "UIButton+Add.h"

@implementation UIButton (Add)
- (void)layoutButtonWithEdgeInsetsStyle:(UIButtonEdgeInsetsStyle)style
                        imageTitleSpace:(CGFloat)space offset:(CGFloat)offset{
    CGFloat imageWith = self.currentImage.size.width;
    CGFloat imageHeight = self.currentImage.size.height;
    
    CGFloat labelWidth = 0.0;
    CGFloat labelHeight = 0.0;
    if (@available(iOS 8.0, *)) {
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    switch (style) {
        case UIButtonEdgeInsetsStyleTop: {
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space, 0);
        }
            break;
        case UIButtonEdgeInsetsStyleLeft: {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, 0);
            if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight){
                imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, space/2.0+offset);
                labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, offset);
            }else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft){
                imageEdgeInsets = UIEdgeInsetsMake(0, offset, 0, space/2.0);
                labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0+offset, 0, 0);
            }
        }
            break;
        case UIButtonEdgeInsetsStyleBottom: {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space, -imageWith, 0, 0);
        }
            break;
        case UIButtonEdgeInsetsStyleRight: {
            
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space, 0, -labelWidth-space);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space, 0, imageWith+space);
            if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight){
                imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space, 0, -labelWidth+offset);
                labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space, 0, imageWith+space+offset);
            }else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft){
                imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space+offset, 0, -labelWidth-space);
                labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith+offset, 0, imageWith+space);
            }
            
        }
            break;
        default:
            break;
    }
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}
@end
