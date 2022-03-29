//
//  PokemonSprites.h
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PokemonSprites : NSObject
@property (nonatomic, strong, readonly) NSURL *frontDefault;
@property (nonatomic, strong, readonly) NSURL *frontShiny;
@property (nonatomic, strong, readonly) NSURL *backDefault;
@property (nonatomic, strong, readonly) NSURL *backShiny;
- (instancetype)initWithDict:(NSDictionary<NSString *, id> *)dict 
@end

NS_ASSUME_NONNULL_END
