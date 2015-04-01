//
//  AppDelegate.swift
//  ActorClient
//
//  Created by Stepan Korshakov on 10.03.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

@objc class AppDelegate : UIResponder,  UIApplicationDelegate {
    
    private var window : UIWindow?;
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        var textFieldAppearance = UITextField.appearance();
        textFieldAppearance.tintColor = Resources.TintColor;
        
        UITabBar.appearance().translucent = false
        UITabBar.appearance().tintColor = Resources.BarTintColor;
        UITabBar.appearance().backgroundImage = Imaging.imageWithColor(UIColor.whiteColor(), size: CGSize(width: 1, height: 46))
        UITabBar.appearance().shadowImage = UIImage(named: "CardTop2");
        UITabBar.appearance().selectionIndicatorImage = Imaging.imageWithColor(UIColor(red: 0xeb/255.0, green: 0xed/255.0, blue: 0xf2/255.0, alpha: 1), size: CGSize(width: 1, height: 46)).resizableImageWithCapInsets(UIEdgeInsetsZero);
        

        var rootController = UINavigationController(rootViewController: MainTabController());
    
        window = UIWindow(frame: UIScreen.mainScreen().bounds);
        window?.rootViewController = rootController;
        window?.makeKeyAndVisible();
        window?.backgroundColor = UIColor.whiteColor()
        
        if (MSG.isLoggedIn() == false) {
            var phoneController = AAAuthPhoneController()
            var loginNavigation = AANavigationController(rootViewController: phoneController)
            loginNavigation.makeBarTransparent()
            rootController.presentViewController(loginNavigation, animated: false, completion: nil)
//            var controller = UIStoryboard(name: "Auth", bundle: nil).instantiateInitialViewController() as! UIViewController;
//            rootController.presentViewController(controller, animated: false, completion: nil)
        }
        
        return true;
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        MSG.onAppVisible();
    }

    func applicationDidEnterBackground(application: UIApplication) {
        MSG.onAppHidden();
    }
    
}