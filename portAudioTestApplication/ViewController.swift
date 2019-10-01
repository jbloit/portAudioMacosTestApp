//
//  ViewController.swift
//  portAudioTestApplication
//
//  Created by julien@macmini on 01/10/2019.
//  Copyright © 2019 jbloit. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        AudioManager.sharedInstance()
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

