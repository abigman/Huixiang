//
//  WeiboHTTP.h
//  yueyue
//
//  Created by Yu Cong on 13-1-17.
//  Copyright (c) 2013年 Yu Cong. All rights reserved.
//

#import "HTTP.h"
#define WEIBO_DOMAIN_URL @"https://api.weibo.com/2"

@interface WeiboHTTP 

+(void)sendRequestToPath:(NSString*)url method:(NSString*)method params:(NSDictionary*)params  completionHandler:(void (^)(id)) completionHandler ;


+(void)postJsonToPath:(NSString*)url id:object  completionHandler:(void (^)(id)) completionHandler;
@end
