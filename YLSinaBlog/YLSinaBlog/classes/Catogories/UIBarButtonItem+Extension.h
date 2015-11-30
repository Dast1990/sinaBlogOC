//
//  UIBarButtonItem+Extension.h
//  YLSinaBlog
//
//  Created by LongMa on 15/11/30.
//  Copyright © 2015年 LongMa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)


+ (instancetype)itemWithTarget:(id)target   selector:(SEL)selectorName normalImgName:(NSString *)normalImgName   highlightedImgName:(NSString *) highlightedImgName;

@end
