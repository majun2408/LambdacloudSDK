/**
 *   Copyright (c) 2015, LambdaCloud
 *   All rights reserved.
 *
 *   Redistribution and use in source and binary forms, with or without
 *   modification, are permitted provided that the following conditions are met:
 *
 *   1. Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 *   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 *   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 *   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 *   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 *   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 *   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 *   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 *   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 *   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *   POSSIBILITY OF SUCH DAMAGE.
 */

#import "LogSdkConfig.h"

static NSString *logSdkToken = nil;

@implementation LogSdkConfig

NSString *const kHttpUrl = @"http://api.lambdacloud.com/log/v2";
NSString *const kLogTag = @"LambdacloudSDK";
NSInteger const kHttpTimeoutSec = 60;
NSInteger const kSpoutSleepTimeMS = 1000;
NSInteger const kHttpStatusCodeSuccess = 200;
NSInteger const kHttpStatusCodeTokenIllegal = 406;
BOOL kDebug = false;
NSInteger  kQueueSize = 100;
//method name
NSString *const kGetInternetConnectionStatus = @"getInternetConnectionStatus";
NSString *const kGetDeviceName = @"getDeviceName";
NSString *const kGetOperationInfo = @"getOperationInfo";
NSString *const kGetSystemOs = @"getSystemOs";
NSString *const kGetLocation = @"getLocation";
NSString *const kGetBatteryPower = @"getBatteryPower";

+ (NSString *)LogSdkToken
{
    @synchronized(self) {
        return logSdkToken;
    }
}
+ (NSInteger)kQueueSize{
    return kQueueSize;
}
+ (BOOL)kDebug{
    return kDebug;
}

+ (void)SetLogSdkToken:(NSString *)token
{
    @synchronized(self) {
        logSdkToken = token;
    }
}

@end