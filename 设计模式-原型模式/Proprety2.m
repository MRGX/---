//
//  Proprety2.m
//  设计模式-原型模式
//
//  Created by 高翔 on 2020/3/4.
//  Copyright © 2020 高翔. All rights reserved.
//

#import "Proprety2.h"

@interface Proprety2 ()<NSCopying>
{
    NSString *_name;
    NSString *_idString;
    
}
@end
@implementation Proprety2
- (instancetype)init{
    self = [super init];
    if (self) {
        _children = [NSMutableArray array];
    }
    return self;
}
- (instancetype)copyWithZone:(NSZone *)zone{
    //用[self class]是因为，如果当前类有子类，调用copy时返回子类类型
    typeof(self) newObjject = [[[self class] allocWithZone:zone] init];
    newObjject.name = [_name copy];
    newObjject.idString = [_idString copy];
   
    NSMutableArray *temp = [NSMutableArray array];
    for (id<CombineProtocol> ob in _children) {
        [temp addObject:[ob copy]];
    }
    newObjject.children = temp;
    return newObjject;
}
- (void)setName:(NSString *)name{
    _name = [name copy];
}
- (NSString *)name{
    return _name;
}
- (void)setIdString:(NSString *)idString{
    _idString = [idString copy];
}
- (NSString *)idString{
    return _idString;
}
- (void)addChild:(id<CombineProtocol>)child{
    [_children addObject:child];
}
@end
