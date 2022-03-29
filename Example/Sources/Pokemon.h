//
//  Pokemon.h
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PokemonSprites.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pokemon : NSObject
@property (nonatomic, readonly) NSInteger pokemonId;
@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, readonly) NSInteger order;
@property (nonatomic, strong, readonly) PokemonSprites *sprites;
- (instancetype)initWithDict:(NSDictionary<NSString *, id> *)dict;
@end

NS_ASSUME_NONNULL_END
