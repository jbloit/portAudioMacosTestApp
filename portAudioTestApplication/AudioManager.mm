//
//  AudioManager.m
//  portAudioTestApplication
//
//  Created by julien@macmini on 01/10/2019.
//  Copyright © 2019 jbloit. All rights reserved.
//

#import "AudioManager.h"
#import "AudioStream.hpp"

static AudioManager *_sharedInstance = nil;


@implementation AudioManager{

    
}


+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[AudioManager alloc] init];
        AudioStream pastream;
    });
    
    return _sharedInstance;
}

@end
