//
//  MyURLProtocol.m
//  testnsurlprotocol
//
//  Created by Sam Duke on 29/04/2015.
//  Copyright (c) 2015 Airsource. All rights reserved.
//

#import "MyURLProtocol.h"

@implementation MyURLProtocol

+ (BOOL)canInitWithRequest:(NSURLRequest *)request
{
    return YES;
}

+ (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request;
{
    return request;
}

+ (BOOL)requestIsCacheEquivalent:(NSURLRequest *)a toRequest:(NSURLRequest *)b
{
    return NO;
}

- (void)startLoading;
{
    assert(self.request.HTTPBody != nil);
    NSError *error = [NSError errorWithDomain:NSInternalInconsistencyException code:0 userInfo:@{NSLocalizedDescriptionKey : @"Failed to construct response for stub."}];
    [self.client URLProtocol:self didFailWithError:error];
}

- (void)stopLoading
{
    
}

@end
