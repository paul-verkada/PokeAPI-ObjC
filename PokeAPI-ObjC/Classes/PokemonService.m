//
//  PokemonService.m
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import "PokemonService.h"
#import "Pokemon.h"
#import "PokemonResult.h"

@implementation PokemonService

static NSString *PokemonURL = @"https://pokeapi.co/api/v2/pokemon";

+ (void)listPokemonWithSuccess:(void (^)(NSArray<Pokemon *> *))success failure:(void (^)(NSError *error))failure {
  NSURLSession *session = [NSURLSession sharedSession];
  NSURL *url = [NSURL URLWithString:PokemonURL];
  NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data,
                                                                                    NSURLResponse * _Nullable response,
                                                                                    NSError * _Nullable error) {
    if (error) {
      failure(error);
      return;
    }
    
    NSError *jsonError;
    NSDictionary<NSString *, id> *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
    if (jsonError) {
      failure(jsonError);
    } else {
      NSArray<NSDictionary<NSString *, id> *> *results = json[@"results"];
      NSMutableArray<PokemonResult *> *pokemonResults = [[NSMutableArray alloc] init];
      for (NSDictionary<NSString *, id> *result in results) {
        PokemonResult *pokemonResult = [[PokemonResult alloc] initWithDict:result];
        [pokemonResults addObject:pokemonResult];
      }
      
      dispatch_group_t group = dispatch_group_create();
      __block NSMutableArray<Pokemon *> *pokemons = [[NSMutableArray alloc] init];
      for (PokemonResult *pokemonResult in pokemonResults) {
        dispatch_group_enter(group);
        [PokemonService getPokemon:pokemonResult.url success:^(Pokemon *pokemon) {
          [pokemons addObject:pokemon];
          dispatch_group_leave(group);
        } failure:^(NSError *error) {
          NSLog(@"%@", [error localizedDescription]);
          dispatch_group_leave(group);
        }];
      }
      
      dispatch_group_notify(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        success(pokemons);
      });
    }
  }];
  
  [dataTask resume];
}

+ (void)getPokemon:(NSURL *)url success:(void (^)(Pokemon *pokemon))success failure:(void (^)(NSError *error))failure {
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data,
                                                                                    NSURLResponse * _Nullable response,
                                                                                    NSError * _Nullable error) {
    if (error) {
      failure(error);
      return;
    }
    
    NSError *jsonError;
    NSDictionary<NSString *, id> *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
    
    if (jsonError) {
      failure(jsonError);
    } else {
      Pokemon *pokemon = [[Pokemon alloc] initWithDict:json];
      success(pokemon);
    }
  }];
  
  [dataTask resume];
}

@end
