//
//  LocationManager.swift
//  Budget
//
//  Created by Evan Davis on 1/8/17.
//  Copyright © 2017 Evan Davis. All rights reserved.
//

import Foundation
import FoursquareAPIClient

class LocationManager {
    
    func getFoursquarePlaces() {
        
    }
    
    func checkinToPlace() {
        // access token
        // XXLGPCYK1LI3ICJYPHGNHDJBKS3VNGEJBPYZYY0MSQBO0MJN
        
        let accessClient = FoursquareAPIClient(accessToken: "XXLGPCYK1LI3ICJYPHGNHDJBKS3VNGEJBPYZYY0MSQBO0MJN", version: "20170104")
        
        let parameter: [String: String] = [
            "venueId": "55b731a9498eecdfb3854a9",
            "ll": "37.33262674912818,-122.030451055438",
            "alt": "10"
        ];
        
        accessClient.request(path: "checkins/add", method: .post, parameter: parameter) {
            [weak self] (data, error) in
            
            // parse the JSON with NSJSONSerialization or Lib like SwiftyJson
            
            // {"meta":{"code":200},"notifications":[{"type":"notificationTray"…
            var response = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
        }
    }
    
    func isFoursquareAuthorized() {
        
    }
    
    func authorizeFoursquare(with viewController: UIViewController) {
        let authClient = FoursquareAuthClient(clientId: "XSEJS03ZJWXB41HOYKEEF3JDP0J0O3CWTF210MEATIQGRKFQ",
                                           callback: "simplebudgettracker://foursquare",
                                           delegate: self)
        authClient.authorizeWithRootViewController(viewController)
        
    }

}

extension LocationManager : FoursquareAuthClientDelegate {
    
    func foursquareAuthClientDidSucceed(accessToken: String) {
        print(accessToken)
    }
    
    func foursquareAuthClientDidFail(error: Error) {
        print(error)
    }
}

