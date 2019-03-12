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
    var mapItems = MKMapItem()
    var selectedMapItem = MKMapItem()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem.name)
    }
}
