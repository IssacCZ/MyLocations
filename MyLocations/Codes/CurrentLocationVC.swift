//
//  CurrentLocationVC.swift
//  MyLocations
//
//  Created by IssacCZ on 11/14/15.
//  Copyright © 2015 Issac. All rights reserved.
//

import UIKit

class CurrentLocationVC: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var getButton: UIButton!
    
    @IBAction func getLocatoin() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

