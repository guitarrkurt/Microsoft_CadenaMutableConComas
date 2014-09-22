//
//  main.m
//  Microsoft
//
//  Created by guitarrkurt on 09/09/14.
//  Copyright (c) 2014 David G. López. All rights reserved.

#import <Foundation/Foundation.h>

@interface cualquiera : NSObject

+(NSString *)resolver:(int)numero;

@end

@implementation cualquiera

+(NSString *)resolver:(int)numero{
    
    if ((numero < 0) || ((numero > 0) && (numero < 1000))) {
        return [@(numero) stringValue];
    }else{
        NSMutableString *aux = [[NSMutableString alloc] init];
        [aux setString:[@(numero) stringValue]];

        int i = (NSInteger)[aux length];
        
        for(int j = 0; j < ([aux length]/3)-1; j++){
               i = i - 3;
                [aux insertString:@"," atIndex:i];
        }
        
        return aux;
    }
}

@end

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        NSLog(@"%@", [cualquiera resolver:1122433456]);
    }
    return 0;
}

