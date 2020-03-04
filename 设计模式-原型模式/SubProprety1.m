//
//  SubProprety1.m
//  设计模式-原型模式
//
//  Created by 高翔 on 2020/3/4.
//  Copyright © 2020 高翔. All rights reserved.
//

#import "SubProprety1.h"

@implementation SubProprety1
- (instancetype)copyWithZone:(NSZone *)zone{
    typeof(self) copySelf = [super copyWithZone:zone];
    copySelf.nickName  = [_nickName copy];
    return copySelf;
}
@end
