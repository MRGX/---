//
//  CombineProtocol.h
//  设计模式-原型模式
//
//  Created by 高翔 on 2020/3/4.
//  Copyright © 2020 高翔. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CombineProtocol <NSObject>
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *idString;

- (id)copy;
- (void)addChild:(id<CombineProtocol>)child;


@end

NS_ASSUME_NONNULL_END
