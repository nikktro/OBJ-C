//
//  Bird.h
//  objc_less01
//
//  Created by Nikolay Trofimov on 28.10.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property (nonatomic, strong, readonly) NSNumber *number;

- (instancetype) initNewBird:(NSNumber *)number;

+ (instancetype)factory; // factory


@end

NS_ASSUME_NONNULL_END
