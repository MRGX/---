//
//  Client.m
//  设计模式-原型模式
//
//  Created by 高翔 on 2020/3/4.
//  Copyright © 2020 高翔. All rights reserved.
//

#import "Client.h"
#import "SubProprety1.h"
#import "Proprety2.h"
@implementation Client
- (void)copyProprrety1{
    Proprrety1 *p = [Proprrety1 new];
    p.name = @"1";
    p.idString = @"2";
    Proprrety1 *copyP = [p copy];
    NSLog(@"p:%@ name :%@ , id:%@",p,p.name,p.idString);
    NSLog(@"copyP:%@ name :%@ , id:%@",copyP,copyP.name,copyP.idString);
}
- (void)copySubProprrety1{
    SubProprety1 *p = [SubProprety1 new];
    p.name = @"1";
    p.idString = @"2";
    p.nickName = @"3";
    SubProprety1 *copyP = [p copy];
    NSLog(@"p:%@ name :%@ , id:%@ , nickName:%@",p,p.name,p.idString,p.nickName);
    NSLog(@"copyP:%@ name :%@ , id:%@ , nickName:%@",copyP,copyP.name,copyP.idString,copyP.nickName);
}
- (void)copyProprrety2{
    Proprrety1 *p = [Proprrety1 new];
    p.name = @"1";
    p.idString = @"2";
    SubProprety1 *p1 = [SubProprety1 new];
    p1.name = @"1";
    p1.idString = @"2";
    p1.nickName = @"3";
    Proprety2 *totalP = [Proprety2 new];
    [totalP addChild:p];
    [totalP addChild:p1];
    
    Proprety2 *copyTotalP = [totalP copy];
    id<CombineProtocol> ob = [copyTotalP.children firstObject];
    id<CombineProtocol> ob1 = [copyTotalP.children lastObject];
    
    NSLog(@"totalP:%@ name :%@ , id:%@ , children:%@ , p :%@ ,p1:%@,@ name :%@ , id:%@ ,nickName:%@",totalP,p.name,p.idString,totalP.children,p,p1,p1.name,p1.idString,p1.nickName);
    NSLog(@"copyTotalP:%@ name :%@ , id:%@ , children:%@ ,p :%@,p1:%@,@ name :%@ , id:%@ ,nickName:%@",copyTotalP,ob.name,ob.idString,copyTotalP.children,ob,ob1,ob1.name,ob1.idString,[(SubProprety1 *)ob1 nickName]);
}
@end
