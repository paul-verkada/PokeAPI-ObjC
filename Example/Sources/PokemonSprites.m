//
//  PokemonSprites.m
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import "PokemonSprites.h"

@interface PokemonSprites ()
@property (nonatomic, strong) NSURL *frontDefault;
@property (nonatomic, strong) NSURL *frontShiny;
@property (nonatomic, strong) NSURL *backDefault;
@property (nonatomic, strong) NSURL *backShiny;
@end

@implementation PokemonSprites
- (instancetype)initWithDict:(NSDictionary<NSString *, id> *)dict {
  self = [super init];
  if (self) {
    _frontDefault = [NSURL URLWithString:dict[@"frontDefault"]];
    _frontShiny = [NSURL URLWithString:dict[@"frontShiny"]];
    _backDefault = [NSURL URLWithString:dict[@"backDefault"]];
    _backShiny = [NSURL URLWithString:dict[@"backShiny"]];
  }
  return self;
}
@end
