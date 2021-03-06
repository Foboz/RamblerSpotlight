// Copyright (c) 2016 RAMBLER&Co
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY RSIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "SpotlightEntityObject.h"
#import "ObjectIndexerBase.h"

@interface SpotlightEntityObject ()

@property (nonatomic, strong, readwrite) id<ObjectTransformer> objectTransformer;
@property (nonatomic, strong, readwrite) id<ChangeProviderFetchRequestFactory> requestFactory;
@property (nonatomic, strong, readwrite) id<ObjectIndexer> objectIndexer;

@end

@implementation SpotlightEntityObject

- (instancetype)initWithObjectTransformer:(nonnull id<ObjectTransformer>)objectTransformer
                   requestFactory:(nonnull id<ChangeProviderFetchRequestFactory>)requestFactory
                    objectIndexer:(nonnull id<ObjectIndexer>)objectIndexer {
    self = [super init];
    
    if (self) {
        _requestFactory = requestFactory;
        _objectIndexer = objectIndexer;
        _objectTransformer = objectTransformer;
    }
    
    return self;
}

+ (instancetype)entityObjectWithObjectTransformer:(nonnull id<ObjectTransformer>)objectTransformer
                                   requestFactory:(nonnull id<ChangeProviderFetchRequestFactory>)requestFactory
                                    objectIndexer:(nonnull id<ObjectIndexer>)objectIndexer {
    return [[self alloc] initWithObjectTransformer:objectTransformer
                                    requestFactory:requestFactory
                                     objectIndexer:objectIndexer];
}

@end
