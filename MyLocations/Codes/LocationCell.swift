//
//  LocationCell.swift
//  MyLocations
//
//  Created by IssacCZ on 12/16/15.
//  Copyright © 2015 Issac. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    func configureForLocation(location: Location) {
        if location.locationDescription.isEmpty {
            descriptionLabel.text = "(No Description)"
        } else {
            descriptionLabel.text = location.locationDescription
        }
        
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
            
            addressLabel.text = text;
        } else {
            addressLabel.text = String(format: "Lat: %.4f, Long: %.4f", location.latitude, location.longitude)
        }
        
        photoImageView.image = imageForLocation(location)
    }
    
    func imageForLocation(location: Location) -> UIImage {
        if location.hasPhoto, let image = location.photoImage {
            return image.resizedImageWithBounds(CGSize(width: 52, height: 52))
        }
        
        return UIImage()
    }
}
