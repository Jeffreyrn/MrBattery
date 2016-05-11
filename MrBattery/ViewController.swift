//
//  ViewController.swift
//  MrBattery
//
//  Created by jeffrey on 11/5/2016.
//  Copyright © 2016 shaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var CycleLabel: UILabel!
    @IBOutlet weak var HeathyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIDevice.currentDevice().batteryMonitoringEnabled = true;
        // shows the battery level on labels
        CycleLabel.text = "\(batteryLevel() * 100)%"
        
        HeathyLabel.text = "\(batteryState())"
        
        print("\(batteryLevel() * 100)%")
        print("\(batteryState())")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // function to return the devices battery level
    func batteryLevel()-> Float {
        return UIDevice.currentDevice().batteryLevel
    }
    
    // function to return the devices battery state (Unknown, Unplugged, Charging, or Full)
    func batteryState()-> UIDeviceBatteryState {
        return UIDevice.currentDevice().batteryState
    }

}

