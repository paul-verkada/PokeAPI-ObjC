//
//  PokemonService.h
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pokemon;

NS_ASSUME_NONNULL_BEGIN

@interface PokemonService : NSObject
+ (void)listPokemonWithSuccess:(void (^)(NSArray<Pokemon *> *))success failure:(void (^)(NSError *error))failure;
+ (void)listPokemonWithLimit:(NSInteger)limit
                      offset:(NSInteger)offset
                     success:(void (^)(NSArray<Pokemon *> *))success
                     failure:(void (^)(NSError *error))failure;
@end

NS_ASSUME_NONNULL_END
