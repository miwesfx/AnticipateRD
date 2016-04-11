//
//  PromotoresVC.swift
//  AnticipateRD
//
//  Created by Miguel on 11/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class PromotoresVC: UIViewController {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var cuadroTexto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        cuadroTexto.text = ""
    }
    
    @IBAction func PromotoresButton(sender: AnyObject) {
        cuadroTexto.text = ""
    }
    
    @IBAction func ScenariosButton(sender: AnyObject) {
        cuadroTexto.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}