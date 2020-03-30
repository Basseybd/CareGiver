//
//  ProfileViewController.swift
//  CareGiver
//
//  Created by David William Nartey on 3/25/20.
//  Copyright © 2020 CareGiver. All rights reserved.
//

import UIKit
import AWSAppSync
import CoreLocation
import EstimoteProximitySDK

class ProfileViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let estimote = EstimoteSDKHelper()

    
    @IBAction func estimote(_ sender: Any) {
        appDelegate.startMonitor()
    }
    
    @IBAction func stopMonitoring(_ sender: Any) {
        appDelegate.stopMonitor()
        estimote.addBeacon()
       // var beacon1 = EstimoteSDKHelper.zonesToMonitor(zoneName: "desk", tagName: "bedroom", rangeInput: ProximityRange.near, onEnterTitle: "Entered Desk Space", onEnterMessage: "Watch your tools", onExitTitle: "Leaving Desk Space", onExitMessage: "DId you put your tools away?")
        
        /*let units: [[Any]] = [[100, 200, 300], [400, 500, 600], [700,800,900]]
        print(units[0][0])
        print(units[0][1])
        print(units[0][2])*/
    }
    
    func test(){
        appDelegate.dynamicMonitor(appIDString: "caregiver-2-0-cr9", apptokenString: "aabc089761b372d32f2cfffbadda68c9")
        let units: [[Int]] = [[100, 200, 300], [400, 500], [600]]
    }
}