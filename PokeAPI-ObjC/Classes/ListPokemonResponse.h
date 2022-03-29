//
//  ListPokemonResponse.h
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PokemonResult;

NS_ASSUME_NONNULL_BEGIN

@interface ListPokemonResponse : NSObject
@property (nonatomic, readonly) NSInteger count;
@property (nonatomic, strong, readonly) NSString *next;
@property (nonatomic, strong, readonly) NSString *previous;
@property (nonatomic, strong, readonly) NSArray<PokemonResult *> *results;
@end

NS_ASSUME_NONNULL_END
