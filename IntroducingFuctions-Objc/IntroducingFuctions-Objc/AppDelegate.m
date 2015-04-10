//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Declare and set new variables called myName and japaneseName to my name
    NSString *myName = @"Justin";
    NSString *japaneseName = @"ジャステイン";
    
    //call function to pass names printIntroductions
    countDownTillIntroductions(4);
    printIntroductions(myName, japaneseName);
    
    return YES;
}

//declare function printIntroductions
void printIntroductions(NSString *name, NSString *funcJapaneseName){
    
    //string variables introduction and japanese introduction. Enjoy unicode support.
    NSString *introduction;
    NSString *japaneseIntroduction;
    introduction = [NSString stringWithFormat:@"My name is %@.", name];
    japaneseIntroduction = [funcJapaneseName stringByAppendingString:@"と申します。よろしくお願いします。"];
    
    //log introductions
    NSLog(@"%@",introduction);
    NSLog(@"%@", japaneseIntroduction);
}
//declare function countDownTillIntroductions
void countDownTillIntroductions(int numberOfDays){
    if (numberOfDays == 0) {
        NSLog(@"The time has come!");
    }
    else {
        NSLog(@"%d days left until introductions", numberOfDays);
        int oneLessDay = numberOfDays-1;
        countDownTillIntroductions(oneLessDay);
    }
}
    




@end
