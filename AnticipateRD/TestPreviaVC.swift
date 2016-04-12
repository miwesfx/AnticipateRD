//
//  TestPreviaVC.swift
//  AnticipateRD
//
//  Created by Miwe sfx on 12/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class TestPreviaVC: UIViewController {
    
    @IBOutlet weak var cuadroTexto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        cuadroTexto.text = "A continuación puede realizar una encuesta sobre situaciones de peligro a las que puede estar expuesta.\nCon los datos obtenidos podrá tener una aproximación al riesgo que esta corriendo y las medidas que debe de llevar acabo en tal situación.\nTodos los datos que pueda ver en esta aplicación son orientativos, los cuales debe constatar con las fuerzas y cuerpos de seguridad.\nEllos son los que le realizaran una valoración del riesgo objetiva.\nConteste SÍ o No a cada una de las siguientes preguntas.\nLas preguntas se refieren a su marido, pareja, novio o persona que mantiene una relación personal con usted."
        cuadroTexto.textAlignment = NSTextAlignment.Justified
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}