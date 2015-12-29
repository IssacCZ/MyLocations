//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by IssacCZ on 12/29/15.
//  Copyright © 2015 Issac. All rights reserved.
//

import Foundation
import UIKit

class MyTabBarController: UITabBarController {
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return nil
    }
}