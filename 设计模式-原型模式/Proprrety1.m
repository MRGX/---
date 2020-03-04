//
//  Proprrety1.m
//  设计模式-原型模式
//
//  Created by 高翔 on 2020/3/4.
//  Copyright © 2020 高翔. All rights reserved.
//

#import "Proprrety1.h"

@interface Proprrety1 ()<NSCopying>
{
    NSString *_name;
    NSString *_idString;
}
@end
@implementation Proprrety1
//当调用copy方法时，NSObject会向实现NSCopying的子类转发消息，如果该子类没有实现copyWithZone方法，会抛出NSInValidArgumentException的异常
- (instancetype)copyWithZone:(NSZone *)zone{
    //用[self class]是因为，如果当前类有子类，调用copy时返回子类类型
    typeof(self) newObjject = [[[self class] allocWithZone:zone] init];
    newObjject.name = [_name copy];
    newObjject.idString = [_idString copy];
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
@end
