//
//  Functions.swift
//  MyLocations
//
//  Created by IssacCZ on 11/18/15.
//  Copyright © 2015 Issac. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(seconds: Double, closure: () -> ()) {
    let when = dispath_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
    dispatch_after(when, dispatch_get_main_queue(), closure)
}