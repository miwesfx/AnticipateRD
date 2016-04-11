//
//  MenuVC.swift
//  AnticipateRD
//
//  Created by Miguel on 8/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func botonAlarma(sender: AnyObject) {
        let url:NSURL = NSURL(string: "tel://911")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
