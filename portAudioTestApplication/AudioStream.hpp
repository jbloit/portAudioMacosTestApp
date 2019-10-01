//
//  AudioStream.hpp
//  portAudioTestApplication
//
//  Created by julien@macmini on 01/10/2019.
//  Copyright © 2019 jbloit. All rights reserved.
//

#ifndef AudioStream_hpp
#define AudioStream_hpp

#include <stdio.h>
#include <portaudio.h>

#define TABLE_SIZE   (200)
typedef struct
{
    float sine[TABLE_SIZE];
    int left_phase;
    int right_phase;
    char message[20];
}
paTestData;



class AudioStream {
    
public:
    AudioStream();
    ~AudioStream();
    static void openStreamAndPlay();
    
private:
    static int patestCallback( const void *inputBuffer, void *outputBuffer,
                              unsigned long framesPerBuffer,
                              const PaStreamCallbackTimeInfo* timeInfo,
                              PaStreamCallbackFlags statusFlags,
                              void *userData );
    
    static void StreamFinished( void* userData );
    
    PaStreamParameters outputParameters;
    PaStream *stream;
    PaError err;
    paTestData data;
    int i;
    
};



#endif /* AudioStream_hpp */
