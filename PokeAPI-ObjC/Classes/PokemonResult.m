//
//  PokemonResult.m
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import "PokemonResult.h"

@interface PokemonResult ()
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSURL *url;
@end

@implementation PokemonResult

- (instancetype)initWithDict:(NSDictionary<NSString *, id> *)dict {
  self = [super init];
  if (self) {
    _name = dict[@"name"];
    _url = [NSURL URLWithString:dict[@"url"]];
  }
  return self;
}

@end
