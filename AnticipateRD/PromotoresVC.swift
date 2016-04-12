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
        cuadroTexto.text = "Asociación Escuela sin animo de lucro dedicada a la prevención de cualquier tipo de violencia, al asesoramiento, consultoría e investigación (I+D+I).\n\nTeniendo entre sus fines principales, la creación de un espacio de formación específico contra toda forma de violencia, a desarrollar en el entorno de los centros educativos y sociales, así como la promoción, el establecimiento de mecanismos de cooperación y fortalecimiento institucional entre entidades públicas y privadas capaces de alcanzar tal fin.\n\nLa excelencia del servicio se basa en un grupo multidisciplinar de conocimientos expertos y fusionado con una única línea de trabajo basada en la experiencia demostrada por sus miembros.\n\nSer una Asociación Escuela referente a nivel Regional con lazos de unión internacionales en el ámbito de la prevención de la violencia desde la investigación, con una metodología que combine conocimientos científicos con aplicación práctica desde las necesidades que nos  planteen.\n\n– Carácter científico y alta cualificación del equipo de trabajo.\n\n– Visión multidisciplinar del servicio.\n\n– Compromiso de mejora continua.\n\n– Compromiso social protegiendo las garantías de la ciudadanía y de los profesionales.\n\nDesde EPV se pretende dar una solución multidisciplinar a diversos actos violentos que nos encontramos diariamente en nuestra sociedad en base a la investigación científica y la experiencia profesional del equipo que dirige esta institución.\n\nObjetivos EPV:\n\n1      Introducir la prevención dentro de las escuelas, a fin de que conozcan los limites legales que enmarcan los excesos de violencias y las consecuencias penales, civiles y medico legales de estas, se busca sensibilizar a los y las jóvenes sobre los parámetros de la violencia, darles a conocer el ámbito jurídico, psicológico y medico legal en el que se pueden ver inmersos con actuaciones violentas.\n\n2      Ofrecer a todos los sectores de la violencia  de Genero una visión multidisciplinar en la que prime la reducción de los daños sin cuestionar su eficacia, aportándoles una formación sobre la legitima defensa, la psicología y la medicina legal.\n\n3      Dar un paso mas y acercar esta prevención a todas las jóvenes víctimas o no víctimas de Violencia de Genero y así poder vacunarlas antes posibles casos de violencias que se les pueda presentar en su vida cotidiana.\n\n4      Dotar de una formación en autoprotección a profesionales de la salud que garantice su integridad física frente a agresiones violentas que puedan sufrir en el desempeño de su labores profesionales.\n\n5      Prevención de la violencia en el ámbito deportivo, así de la xenofobia o el racismo."
        imagen.image = UIImage(named: "logoEPV")
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    
    @IBAction func PromotoresButton(sender: AnyObject) {
        cuadroTexto.text = "Asociación Escuela sin animo de lucro dedicada a la prevención de cualquier tipo de violencia, al asesoramiento, consultoría e investigación (I+D+I).\n\nTeniendo entre sus fines principales, la creación de un espacio de formación específico contra toda forma de violencia, a desarrollar en el entorno de los centros educativos y sociales, así como la promoción, el establecimiento de mecanismos de cooperación y fortalecimiento institucional entre entidades públicas y privadas capaces de alcanzar tal fin.\n\nLa excelencia del servicio se basa en un grupo multidisciplinar de conocimientos expertos y fusionado con una única línea de trabajo basada en la experiencia demostrada por sus miembros.\n\nSer una Asociación Escuela referente a nivel Regional con lazos de unión internacionales en el ámbito de la prevención de la violencia desde la investigación, con una metodología que combine conocimientos científicos con aplicación práctica desde las necesidades que nos  planteen.\n\n– Carácter científico y alta cualificación del equipo de trabajo.\n\n– Visión multidisciplinar del servicio.\n\n– Compromiso de mejora continua.\n\n– Compromiso social protegiendo las garantías de la ciudadanía y de los profesionales.\n\nDesde EPV se pretende dar una solución multidisciplinar a diversos actos violentos que nos encontramos diariamente en nuestra sociedad en base a la investigación científica y la experiencia profesional del equipo que dirige esta institución.\n\nObjetivos EPV:\n\n1      Introducir la prevención dentro de las escuelas, a fin de que conozcan los limites legales que enmarcan los excesos de violencias y las consecuencias penales, civiles y medico legales de estas, se busca sensibilizar a los y las jóvenes sobre los parámetros de la violencia, darles a conocer el ámbito jurídico, psicológico y medico legal en el que se pueden ver inmersos con actuaciones violentas.\n\n2      Ofrecer a todos los sectores de la violencia  de Genero una visión multidisciplinar en la que prime la reducción de los daños sin cuestionar su eficacia, aportándoles una formación sobre la legitima defensa, la psicología y la medicina legal.\n\n3      Dar un paso mas y acercar esta prevención a todas las jóvenes víctimas o no víctimas de Violencia de Genero y así poder vacunarlas antes posibles casos de violencias que se les pueda presentar en su vida cotidiana.\n\n4      Dotar de una formación en autoprotección a profesionales de la salud que garantice su integridad física frente a agresiones violentas que puedan sufrir en el desempeño de su labores profesionales.\n\n5      Prevención de la violencia en el ámbito deportivo, así de la xenofobia o el racismo."
        imagen.image = UIImage(named: "banner EPV")
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified

    }
    
    @IBAction func ScenariosButton(sender: AnyObject) {
        cuadroTexto.text = "La empresa Scenarios Security Group desarrolla actividades de capacitación, entrenamientos tácticos, alta tecnología, drones, monitoreo CCTV, seguridad para eventos, servicios de escoltas profesionales, vehículos blindados, radios de telecomunicaciones, análisis de estructuras físicas, accesorias personalizadas, ciberseguridad, seguridad integral, controles de acceso, seguridad perimetral, balística científica, evaluación de riesgos laborales, depuración seguridad empresarial y bancaria, manejo evasivo y defensivo, inteligencia protectivas."
        imagen.image = UIImage(named: "Scenarios")
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    
    @IBAction func fundacionButton(sender: AnyObject) {
        cuadroTexto.text = "Organización sin fines de Lucro. Comprometida con el Aprendizaje, Desarrollo y Progreso De Niñ@s y Jóvenes en las Áreas de Educación, Deportes y Cultura"
        imagen.image = UIImage(named: "logoFundacion")
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}