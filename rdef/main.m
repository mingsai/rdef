//
//  main.m
//  rdef
//
//  Created by Tommie Carter on 22/3/14.
//  Copyright (c) 2014 Tommie Carter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        if(argc < 2)
        {
            printf("Usage: rdef <word to define>");

            return -1;
        }

        NSString * search =
        [NSString stringWithCString: argv[1] encoding: NSUTF8StringEncoding];

        CFStringRef def =
        DCSCopyTextDefinition(NULL,
                              (__bridge CFStringRef)search,
                              CFRangeMake(0, [search length]));

        NSString * output =
        [NSString stringWithFormat: @"Definition of <%@>: %@", search, (__bridge NSString *)def];

        printf("%s", [output UTF8String]);

        CFRelease(def);


    }
    return 0;
}

