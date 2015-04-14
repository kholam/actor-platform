//
//  SwiftCocoaLocale.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 14.04.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation
class CocoaLocale : NSObject, AMLocaleProvider {

    func loadLocale() -> JavaUtilHashMap! {
        var res = JavaUtilHashMap()
        
        var currentLocale = NSLocalizedString("CurrentLocale",comment: "Current Locale Value")
        var textName = "AppText"
        var monthsName = "Months"
        
        if (currentLocale != "En") {
            textName = "AppText_"+currentLocale
            monthsName = "Months_"+currentLocale
        }
        
        var error:NSError?;
        var text = NSString(contentsOfFile: NSBundle.mainBundle().pathForResource(textName, ofType: "properties")!, encoding: NSUTF8StringEncoding, error: &error)!
        
        for line in text.componentsSeparatedByString("\n") {
            var tokens = line.componentsSeparatedByString("=")
            if (tokens.count == 2) {
                res.putWithId(tokens[0], withId: tokens[1])
            }
        }
        
        text = NSString(contentsOfFile: NSBundle.mainBundle().pathForResource(monthsName, ofType: "properties")!, encoding: NSUTF8StringEncoding, error: &error)!
        
        for line in text.componentsSeparatedByString("\n") {
            var tokens = line.componentsSeparatedByString("=")
            if (tokens.count == 2) {
                res.putWithId(tokens[0], withId: tokens[1])
            }
        }
        
        return res
//        static JavaUtilHashMap *map = nil;
//        if (map == nil) {
//            map = [[JavaUtilHashMap alloc] init];
//            NSError *error = nil;
//            NSString *text = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"AppText" ofType:@"properties"] encoding:NSUTF8StringEncoding error:&error];
//            for (NSString *line in [text componentsSeparatedByString:@"\n"]) {
//                NSArray *tokens = [line componentsSeparatedByString:@"="];
//                if (tokens.count == 2)
//                [map putWithId:tokens[0] withId:tokens[1]];
//            }
//            
//            text = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Months" ofType:@"properties"] encoding:NSUTF8StringEncoding error:&error];
//            for (NSString *line in [text componentsSeparatedByString:@"\n"]) {
//                NSArray *tokens = [line componentsSeparatedByString:@"="];
//                if (tokens.count == 2)
//                [map putWithId:tokens[0] withId:tokens[1]];
//            }
//            
//        }

    }
    
    func is24Hours() -> Bool {
        return true
    }
}