//
//  Place.swift
//  Budget
//
//  Created by Evan Davis on 1/5/17.
//  Copyright © 2017 Evan Davis. All rights reserved.
//

import Foundation
import RealmSwift

class Place: Object {
    
    //only the ID is required for checkin
    dynamic var foursquareID: String? //id
    dynamic var name: String?
    var latitude: Double? //lat
    var longitude: Double? //lng
    dynamic var placeDescription: String? //description
    

}
