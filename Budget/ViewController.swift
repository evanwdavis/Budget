//
//  ViewController.swift
//  Budget
//
//  Created by Evan Davis on 1/2/17.
//  Copyright © 2017 Evan Davis. All rights reserved.
//

import UIKit
import FoursquareAPIClient

class ViewController: UIViewController {
    
    var client : FoursquareAuthClient?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.client = FoursquareAuthClient(clientId: "XSEJS03ZJWXB41HOYKEEF3JDP0J0O3CWTF210MEATIQGRKFQ",
                                                                           callback: "simplebudgettracker://foursquare",
                                                                           delegate: self)
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signIn() {
        client?.authorizeWithRootViewController(self)
    }
    
}

extension ViewController : FoursquareAuthClientDelegate {

    func foursquareAuthClientDidSucceed(accessToken: String) {
        print(accessToken)
    }
    
    func foursquareAuthClientDidFail(error: NSError) {
        print(error.description)
    }


}

