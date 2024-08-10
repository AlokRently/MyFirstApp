//
//  AppDelegate.h
//  MyFirstApp
//
//  Created by Rently Coimbatore on 10/08/24.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

