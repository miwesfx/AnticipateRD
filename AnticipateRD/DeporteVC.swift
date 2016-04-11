//
//  DeporteVC.swift
//  AnticipateRD
//
//  Created by Miguel on 8/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class DeporteVC: UIViewController {
    
    @IBOutlet weak var cuadrotexto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        cuadrotexto.text = "Técnicas comunes en las sentadillas:\n- Ayúdate con un espejo las primeras veces para saber que lo estás haciendo bien. Si puedes, grábate en vídeo.\n- Mantén tu espalda erguida durante todo el recorrido del ejercicio.\n- Inspira al iniciar el descenso, te será más fácil mantener la espalda erguida (recta).\n- El muslo debe estar paralelo al suelo al acabar el ejercicio. Si no tienes experiencia, bajar más te puede lesionar.\n- No te inclines en exceso hacia delante.\n- Los pies tienen que estar adelantados con respecto al cuerpo.\n- Las piernas deben estar separadas."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
