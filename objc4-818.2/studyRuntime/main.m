//
//  main.m
//  studyRuntime
//
//  Created by 项正强 on 2022/3/10.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "RuntimeObj.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"----------");
        RuntimeObj *obj = [[RuntimeObj alloc] init];
        [obj test];
        struct objc_class *cls = (__bridge struct objc_class *)[RuntimeObj class];
        NSLog(@"cls = %@",cls);
    }
    return 0;
}
