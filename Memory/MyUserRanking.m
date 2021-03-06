//
//  MyUserRanking.m
//  Memory
//
//  Created by JETS on 4/14/15.
//  Copyright (c) 2015 marian samy. All rights reserved.
//

#import "MyUserRanking.h"

@implementation MyUserRanking
@synthesize userImage,userName,userScore;

-(id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super init]){
        userName = [aDecoder decodeObjectForKey:@"name"];
        userScore = [aDecoder decodeObjectForKey:@"score"];
        userImage = [aDecoder decodeObjectForKey:@"image"];
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:userName forKey:@"name"];
    [aCoder encodeObject:userScore forKey:@"score"];
    [aCoder encodeObject:userImage forKey:@"image"];
    
}
@end
