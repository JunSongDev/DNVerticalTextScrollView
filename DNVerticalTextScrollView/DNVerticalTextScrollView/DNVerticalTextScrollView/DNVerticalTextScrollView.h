//
//  DNVerticalTextScrollView.h
//  DNVerticalTextScrollView
//
//  Created by zjs on 2018/9/13.
//  Copyright © 2018年 zjs. All rights reserved.
//

#import <UIKit/UIKit.h>

// 点击文字轮播的代理
@protocol DNVerticalTextScrollViewDelegate <NSObject>

@optional;
- (void)dn_textScrollViewSelectedAtIndex:(NSInteger)index content:(NSString *)content;

@end

@interface DNVerticalTextScrollView : UIView


@property (nonatomic,   copy) NSArray *dataArray;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *BGColor;
@property (nonatomic, assign) CGFloat textFontSize;

@property (nonatomic, weak) id<DNVerticalTextScrollViewDelegate> delegate;

- (instancetype)initWithDataArray:(NSArray *)dataArray;

@end
