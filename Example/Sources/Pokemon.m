//
//  Pokemon.m
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import "Pokemon.h"
#import "PokemonSprites.h"

@interface Pokemon ()
@property (nonatomic) NSInteger pokemonId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic) NSInteger order;
@property (nonatomic, strong) PokemonSprites *sprites;
@end

@implementation Pokemon

- (instancetype)initWithDict:(NSDictionary<NSString *, id> *)dict {
  self = [super init];
  if (self) {
    _pokemonId = (NSInteger)dict[@"id"];
    _name = dict[@"name"];
    _order = (NSInteger)dict[@"order"];
    _sprites = [[PokemonSprites alloc] initWithDict:dict[@"sprites"]];
  }
  return self;
}

@end
