//
//  PokemonResult.h
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PokemonResult : NSObject
@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSURL *url;

- (instancetype)initWithDict:(NSDictionary<NSString *, id> *)dict;
@end

NS_ASSUME_NONNULL_END
