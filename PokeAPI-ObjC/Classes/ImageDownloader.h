//
//  ImageDownloader.h
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface ImageDownloader : NSObject
+ (void)getImage:(NSURL *)url success:(void (^)(UIImage *image))success failure:(void (^)(NSError *error))failure;
@end

NS_ASSUME_NONNULL_END
