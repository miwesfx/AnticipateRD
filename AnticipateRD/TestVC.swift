//
//  TestVC.swift
//  AnticipateRD
//
//  Created by Miguel on 10/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class TestVC: UIViewController {
    
    var preguntas = [
        "¿Ha aumentado la violencia física sobre usted en el último año?",
        "¿Tiene él un arma de fuego o blanca?",
        "¿Tiene conocimiento o practica algún deporte de contacto o arte marcial?",
        "¿Vive actualmente con él? ",
        "¿Le ha dejado usted, después de vivir juntos, en el último año?",
        "¿Está desempleado, sin trabajo actualmente?",
        "¿Le ha amenazado con una pistola alguna vez?",
        "¿Le ha amenazado con un cuchillo alguna vez? ",
        "¿Le ha amenazado de muerte?",
        "¿Ha sido detenido por violencia de género? ",
        "¿Ha sido detenido por algún otro motivo? ",
        "¿Le ha forzado a mantener relaciones sexuales cuando usted no lo deseaba?",
        "¿Ha intentado alguna vez estrangularla?",
        "¿Consume drogas?",
        "¿Consume alcohol?",
        "¿Le controla él la mayoría de sus actividades diarias?",
        "¿Es celoso con usted?",
        "¿Se comporta normalmente de manera violenta?",
        "¿Alguna vez él ha amenazado con suicidarse?",
        "¿Ha intentado suicidarse alguna vez?",
        "¿Amenaza con hacerle daño a sus hijos?",
        "¿Cree usted que es capaz de matarla?",
        "¿La persigue o espía, le deja notas amenazantes o mensajes en el contestador, destruye sus cosas o propiedades, o le llama cuando usted no quiere?",
        "¿Alguna vez ha amenazado usted con suicidarse o lo ha intentado?"
    ]
    var puntuaciones = [4,3,3,2,2,1,4,4,2,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1]
    
    var cont = 0, resultado = 0, peligroalto = 0, peligromedio = 0
    
    @IBOutlet weak var numeropreguntaLabel: UILabel!
    
    @IBOutlet weak var cuadroTexto: UITextView!

    @IBOutlet weak var imagenresultado: UIImageView!
    
    @IBAction func noBoton(sender: AnyObject) {
        if(cont<23)
        {
            cont += 1
            numeropreguntaLabel.text = "Pregunta " + String(cont+1) + "/24"
            cuadroTexto.text = preguntas[cont]
            cuadroTexto.font = UIFont(name: "Arial", size: 30)
            cuadroTexto.textAlignment = NSTextAlignment.Justified
        }
        else
        {
            numeropreguntaLabel.text = "Fin"
            var riesgo:String
            if(resultado >= 20 || peligroalto > 5)
            {
                riesgo = "Alto.\nPóngase en contacto inmediatamente con la policía."
                imagenresultado.image = UIImage(named: "SemaforoRojo")
            }
            else if(resultado >= 13 || peligromedio > 5)
            {
                riesgo = "Medio.\nDebería ponerse en contacto con la policía."
                imagenresultado.image = UIImage(named: "SemaforoAmarillo")
            }
            else
            {
                riesgo = "Bajo"
                imagenresultado.image = UIImage(named: "SemaforoVerde")
            }
            cuadroTexto.text = "Riesgo: " + riesgo
            cuadroTexto.font = UIFont(name: "Arial", size: 30)
            cuadroTexto.textAlignment = NSTextAlignment.Justified
        }
    }
    
    @IBAction func siBoton(sender: AnyObject) {
        if(cont<23)
        {
            resultado += puntuaciones[cont]
            
            if(cont == 0 || cont == 1 || cont == 2 || cont == 6 || cont == 7)
            {
                peligroalto += puntuaciones[cont]
            }
            if(cont == 3 || cont == 4 || cont == 8 || cont == 9 || cont == 12)
            {
                peligromedio += puntuaciones[cont]
            }
            
            cont += 1
            numeropreguntaLabel.text = "Pregunta " + String(cont+1) + "/24"
            cuadroTexto.text = preguntas[cont]
            cuadroTexto.font = UIFont(name: "Arial", size: 30)
            cuadroTexto.textAlignment = NSTextAlignment.Justified
        }
        else
        {
            resultado += puntuaciones[cont]
            numeropreguntaLabel.text = "Fin"
            var riesgo:String
            if(resultado >= 20 || peligroalto > 5)
            {
                riesgo = "Alto.\nPóngase en contacto inmediatamente con la policía."
                imagenresultado.image = UIImage(named: "SemaforoRojo")
            }
            else if(resultado >= 13 || peligromedio > 5)
            {
                riesgo = "Medio.\nDebería ponerse en contacto con la policía."
                imagenresultado.image = UIImage(named: "SemaforoAmarillo")
            }
            else
            {
                riesgo = "Bajo"
                imagenresultado.image = UIImage(named: "SemaforoVerde")
            }
            cuadroTexto.text = "Riesgo: " + riesgo
            cuadroTexto.font = UIFont(name: "Arial", size: 30)
            cuadroTexto.textAlignment = NSTextAlignment.Justified
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        cont = 0
        resultado = 0
        numeropreguntaLabel.text = "Pregunta " + String(cont+1) + "/24"
        cuadroTexto.text = preguntas[cont]
        cuadroTexto.layer.cornerRadius = 7.0
        cuadroTexto.font = UIFont(name: "Arial", size: 30)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
