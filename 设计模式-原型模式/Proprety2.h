//
//  Proprety2.h
//  设计模式-原型模式
//
//  Created by 高翔 on 2020/3/4.
//  Copyright © 2020 高翔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CombineProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Proprety2 : NSObject<CombineProtocol>

@property (nonatomic,copy)NSMutableArray *children;
@end

NS_ASSUME_NONNULL_END
