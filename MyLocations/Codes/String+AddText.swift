//
//  String+AddText.swift
//  MyLocations
//
//  Created by IssacCZ on 12/29/15.
//  Copyright © 2015 Issac. All rights reserved.
//

import Foundation

extension String {
    mutating func addText(text: String?, withSeparator separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            
            self += text
        }
    }
}