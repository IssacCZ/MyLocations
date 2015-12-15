//
//  LocationsViewController.swift
//  MyLocations
//
//  Created by IssacCZ on 12/14/15.
//  Copyright © 2015 Issac. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import CoreLocation

class LocationsViewController: UITableViewController {
    var managedObjectContext: NSManagedObjectContext!
    var locations = [Location]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetchRequest = NSFetchRequest()
        let entity = NSEntityDescription.entityForName("Location", inManagedObjectContext: managedObjectContext)
        fetchRequest.entity = entity
        
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            let foundObjects = try managedObjectContext.executeFetchRequest(fetchRequest)
            locations = foundObjects as! [Location]
        } catch {
            fatalCoreDataError(error)
        }
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LocationCell", forIndexPath: indexPath)
        let location = locations[indexPath.row]
        
        let descriptionLabel = cell.viewWithTag(1214) as! UILabel
        descriptionLabel.text = location.locationDescription
        
        let adressLabel = cell.viewWithTag(121417) as! UILabel
        if let placemark = location.placemark {
            var text = ""
            if let s = placemark.subThoroughfare {
                text += s + " "
            }
            if let  s = placemark.thoroughfare {
                text += s + ", "
            }
            if let s = placemark.locality {
                text += s
            }
            
            adressLabel.text = text
        } else {
            adressLabel.text = ""
        }
        
        return cell
    }
}