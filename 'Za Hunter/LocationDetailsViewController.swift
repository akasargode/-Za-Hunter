//
//  LocationDetailsViewController.swift
//  'Za Hunter
//
//  Created by Ashwin Kasargode on 3/12/19.
//  Copyright © 2019 Ashwin Kasargode. All rights reserved.
//

import UIKit
import MapKit


class LocationDetailsViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var mapItems = MKMapItem()
    var selectedMapItem = MKMapItem()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem.name!)
    }
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = selectedMapItem.placemark.name
        var address = selectedMapItem.placemark.subThoroughfare! + " "
        address += selectedMapItem.placemark.thoroughfare! + "\n"
        address += selectedMapItem.placemark.locality! + ", "
        address += selectedMapItem.placemark.administrativeArea! + " "
        address += selectedMapItem.placemark.postalCode!
        addressLabel.text = address
        phoneLabel.text = selectedMapItem.phoneNumber
    }
}
