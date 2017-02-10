//
//  ViewController.swift
//  Targets
//
//  Created by Ranjith Kumar on 10/02/2017.
//  Copyright © 2017 F22Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var serverURL: UILabel!
    @IBOutlet weak var bundleID: UILabel!
    @IBOutlet weak var envLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialDataSetup()
    }
    
    private func initialDataSetup() {
        let config = Bundle.main.object(forInfoDictionaryKey: "Config")
        let bundleId = Bundle.main.bundleIdentifier
        
        self.serverURL.text = serverEndPointURL
        self.bundleID.text = bundleId
        self.envLabel.text = config as! String?
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

