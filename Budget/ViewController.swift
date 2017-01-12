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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signIn() {
        client?.authorizeWithRootViewController(self)
    }
    
}
