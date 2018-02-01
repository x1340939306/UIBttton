//
//  UIButton+Add.h
//  UIButton
//
//  Created by 李正兵 on 2017/12/24.
//  Copyright © 2017年 李正兵. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum{
    UIButtonEdgeInsetsStyleTop,
    UIButtonEdgeInsetsStyleLeft,
    UIButtonEdgeInsetsStyleBottom,
    UIButtonEdgeInsetsStyleRight,
}UIButtonEdgeInsetsStyle;


@interface UIButton (Add)

/**
 *style：内容的位置，
 *space：图片和文字之间的距离
 *offset：内容距离边界的偏移
 */
- (void)layoutButtonWithEdgeInsetsStyle:(UIButtonEdgeInsetsStyle)style
                        imageTitleSpace:(CGFloat)space offset:(CGFloat)offset;

@end
