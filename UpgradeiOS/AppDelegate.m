//
//  AppDelegate.m
//  UpgradeiOS
//
//  Created by jackys on 2023/2/23.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SplashController.h"
#import "LetterIndexViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    LetterIndexViewController *rootVc = [[LetterIndexViewController alloc]init];
//    UINavigationController *rootNav = [[UINavigationController alloc]initWithRootViewController:rootVc];
    [self.window setRootViewController:rootVc];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
