//
//  AsesoramientoVC.swift
//  AnticipateRD
//
//  Created by Miguel on 8/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit
import MessageUI

class AsesoramientoVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var remitente: UITextField!
    @IBOutlet weak var consulta: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //Para quitar el teclado cuando se pulsa fuera del campo de texto
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AsesoramientoVC.DismissKeyboard))
        self.view.addGestureRecognizer(tap)
        
        consulta.layer.cornerRadius = 7.0
    }
    
    func DismissKeyboard()
    {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enviar(sender: AnyObject) {
        var TextoRemitente = "Remitente: "
        TextoRemitente += remitente.text!
        
        let CuerpoMensaje = consulta
        
        let Destinatarios = ["crimi@escuelaprevencionviolencia.es"]
        
        let mc: MFMailComposeViewController = MFMailComposeViewController ()
        mc.mailComposeDelegate = self
        mc.setSubject(TextoRemitente)
        
        mc.setMessageBody(CuerpoMensaje.text, isHTML: false)
        
        mc.setToRecipients(Destinatarios)
        
        self.presentViewController(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue
        {
        case MFMailComposeResultCancelled.rawValue:
            NSLog("Correo cancelado")
        case MFMailComposeResultSaved.rawValue:
            NSLog("Correo guardado")
        case MFMailComposeResultSent.rawValue:
            NSLog("Correo enviado")
        case MFMailComposeResultFailed.rawValue:
            NSLog("Envío de correo fallido: %@", [error!.localizedDescription])
        default:
            break;
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}