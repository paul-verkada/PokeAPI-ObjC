//
//  ImageDownloader.m
//  PokeAPI-ObjC_Example
//
//  Created by Paul Wong on 3/28/22.
//  Copyright © 2022 paul-verkada. All rights reserved.
//

#import "ImageDownloader.h"
@import UIKit;

@implementation ImageDownloader
+ (void)getImage:(NSURL *)url success:(void (^)(UIImage *pokemon))success failure:(void (^)(NSError *error))failure {
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data,
                                                                                    NSURLResponse * _Nullable response,
                                                                                    NSError * _Nullable error) {
    if (error) {
      failure(error);
    } else {
      UIImage *image = [UIImage imageWithData:data];
      success(image);
    }
  }];
  
  [dataTask resume];
}
@end
