//
//  InfoVC.swift
//  AnticipateRD
//
//  Created by Miguel on 11/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var cuadroTexto: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        cuadroTexto.text = "DEFINICIONES desde Organismos Internacionales, Nacionales y Autonómicos (Comunidad Andaluza):\n\nDeclaración de la Asamblea General de Naciones Unidas\n\nTodo acto de violencia basado en la pertenencia al sexo femenino que tenga o pueda tener como resultado un daño o sufrimiento físico, sexual o psicológico para la mujer, así como las amenazas de tales actos, la coacción o la privación arbitraria de la libertad, tanto si se producen en la vida pública como en la privada.\nConcepto de feminicidio\nSe acuñó en el movimiento feminista internacional, con el fin de identificar los asesinatos donde las mujeres son las víctimas debido al afán de control y dominación que sobre ellas ejerce su agresor, utilizándose la terminología en todos los casos de homicidio de mujeres en razón de su género.\nFeminicidio Intimo: Asesinatos cometidos  por hombres con quien la víctima tenía o tuvo una relación íntima, familiar, de convivencia, o afines a éstas.\nFeminicidio no Intimo: Asesinatos cometidos por hombres con quienes la víctima no tenía relaciones íntimas, familiares, de convivencia, o afines a éstas.\nFeminicidio por Conexión: mujeres que fueron asesinadas \"en la línea de fuego\" de un hombre tratando de matar o maltratar a una mujer. Este es el caso de mujeres parientes, niñas u otras mujeres que trataron de intervenir o que simplemente fueron atrapadas en la acción del femicida.\nLey 24.632 Convención Interamericana para Prevenir, Sancionar y Erradicar la Violencia contra la Mujer \"Convención de Belém do Pará\".\nArt. 1 \"Violencia contra la mujer\"\nCualquier acción o conducta, basada en su género, que cause muerte, daño o sufrimiento físico, sexual o psicológico a la mujer, tanto en el ámbito público como en el privado.\nArt. 2 Violencia física, sexual y psicológica.\nA. Dentro de la familia o unidad doméstica o en cualquier otra relación interpersonal, ya sea que el agresor comparta o haya compartido el mismo domicilio que la mujer, y que comprende, entre otros, violación, maltrato y abuso sexual.\nB. Que tenga lugar en la comunidad y sea perpetrada por cualquier persona y que comprende, entre otros, violación, abuso sexual, tortura, trata de personas, prostitución forzada, secuestro y acoso sexual en el lugar de trabajo, así como en instituciones educativas, establecimientos de salud o cualquier otro lugar.\nC. Que sea perpetrada o tolerada por el Estado o sus agentes, dondequiera que ocurra."
        cuadroTexto.textAlignment = NSTextAlignment.Justified
        cuadroTexto.font = UIFont(name: "Arial", size: 20)


    }
    
    @IBAction func definicionButton(sender: AnyObject) {
        cuadroTexto.text = "DEFINICIONES desde Organismos Internacionales, Nacionales y Autonómicos (Comunidad Andaluza):\n\nDeclaración de la Asamblea General de Naciones Unidas\n\nTodo acto de violencia basado en la pertenencia al sexo femenino que tenga o pueda tener como resultado un daño o sufrimiento físico, sexual o psicológico para la mujer, así como las amenazas de tales actos, la coacción o la privación arbitraria de la libertad, tanto si se producen en la vida pública como en la privada.\nConcepto de feminicidio\nSe acuñó en el movimiento feminista internacional, con el fin de identificar los asesinatos donde las mujeres son las víctimas debido al afán de control y dominación que sobre ellas ejerce su agresor, utilizándose la terminología en todos los casos de homicidio de mujeres en razón de su género.\nFeminicidio Intimo: Asesinatos cometidos  por hombres con quien la víctima tenía o tuvo una relación íntima, familiar, de convivencia, o afines a éstas.\nFeminicidio no Intimo: Asesinatos cometidos por hombres con quienes la víctima no tenía relaciones íntimas, familiares, de convivencia, o afines a éstas.\nFeminicidio por Conexión: mujeres que fueron asesinadas \"en la línea de fuego\" de un hombre tratando de matar o maltratar a una mujer. Este es el caso de mujeres parientes, niñas u otras mujeres que trataron de intervenir o que simplemente fueron atrapadas en la acción del femicida.\nLey 24.632 Convención Interamericana para Prevenir, Sancionar y Erradicar la Violencia contra la Mujer \"Convención de Belém do Pará\".\nArt. 1 “Violencia contra la mujer”\nCualquier acción o conducta, basada en su género, que cause muerte, daño o sufrimiento físico, sexual o psicológico a la mujer, tanto en el ámbito público como en el privado.\nArt. 2 Violencia física, sexual y psicológica.\nA. Dentro de la familia o unidad doméstica o en cualquier otra relación interpersonal, ya sea que el agresor comparta o haya compartido el mismo domicilio que la mujer, y que comprende, entre otros, violación, maltrato y abuso sexual.\nB. Que tenga lugar en la comunidad y sea perpetrada por cualquier persona y que comprende, entre otros, violación, abuso sexual, tortura, trata de personas, prostitución forzada, secuestro y acoso sexual en el lugar de trabajo, así como en instituciones educativas, establecimientos de salud o cualquier otro lugar.\nC. Que sea perpetrada o tolerada por el Estado o sus agentes, dondequiera que ocurra."
        cuadroTexto.textAlignment = NSTextAlignment.Justified
        cuadroTexto.font = UIFont(name: "Arial", size: 20)


    }
    
    @IBAction func conductasButton(sender: AnyObject) {
        cuadroTexto.text = "¿QUÉ CONDUCTAS ENTENDEMOS POR VIOLENCIA DE GENERO?\n\n¿Qué es abuso físico?\n\n• Cualquier acto de fuerza que se realice contra el cuerpo de la mujer con resultado de lesión física o daño (puñetazos, patadas, tirones de pelo, bocados…).\n\n¿Qué es abuso verbal, emocional y psicológico?\n\n• Actos del hombre hacia la mujer que provocan en la misma desvaloración o sufrimiento, sentimiento de culpa, vergüenza e indefensión. El agresor tiene por objeto incrementar la dominación sobre la víctima (insultos, humillaciones, aislamiento social prohibiendo contacto con familiares y/o amigos…).\n\n¿Qué es violencia social?\n\n• El agresor limita los contactos sociales y familiares de su pareja, aislándola y negándole el apoyo social de sus amistades. Implica controlar a la mujer, limitar sus actividades, imponer horarios, manipular las llamadas telefónicas o controlar los SMS.\n\n¿Qué es abuso sexual?\n\n• Comportamientos que pretendan imponer una relación sexual no deseada mediante presiones físicas o psíquicas.\n\n¿Qué es abuso ambiental?\n\n• El agresor realiza acciones con objeto de destruir el entorno y la paz emocional de la víctima (romper objetos del hogar, impedir el descanso, maltratar a sus mascotas…).\n\n¿Qué es abuso financiero?\n\n• Control de los recursos económicos y patrimoniales para impedir la autonomía de la mujer (negarle el acceso al dinero familiar…)"
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    
    @IBAction func ordenButton(sender: AnyObject) {
        cuadroTexto.text = "ÓRDENES DE PROTECCIÓN\na) Abstenerse de molestar, intimidar o amenazar al cónyuge, ex-cónyuge, conviviente, ex conviviente o pareja consensual o de interferir en la guarda o custodia provisional o definitiva acordada en virtud de la ley o de una orden judicial;\nb) Desalojo del agresor de la residencia del cónyuge, ex cónyuge, conviviente, ex conviviente o pareja consensual;\nc) Interdicción del acceso a la residencia del cónyuge, ex cónyuge, conviviente, ex conviviente o pareja consensual;\nd) Interdicción de acercamiento a los lugares frecuentados por el cónyuge, ex cónyuge, conviviente o pareja consensual;\ne) Prohibición a la víctima de trasladar u ocultar a los hijos comunes;\nf) Internamiento de la víctima en lugares de acogida o refugio a cargo de organismos públicos o privados;\ng) Suministrar servicios, atención a la salud y de orientación para toda la familia a cargo de organismos públicos o privados;\nh) Presentar informes de carácter financiero sobre la gestión de los bienes comunes de la empresa, negocio, comercio, o actividad lucrativa común;\ni) Interdicción de enajenar, disponer, ocultar o trasladar bienes propios de la víctima o bienes comunes;\nj) Reponer los bienes destruidos u ocultados;\nk) Medidas conservatorias respecto de la posesión de los bienes comunes y del ajuar de la casa donde se aloja la familia;\nj) Indemnizar a la víctima de la violencia, sin perjuicio de las acciones civiles que fueren de lugar, por los gastos legales, tratamiento médico, consejos siquiátricos y orientación profesional, alojamiento y otros gastos similares."
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    
    @IBAction func rasgosButton(sender: AnyObject) {
        cuadroTexto.text = "RASGOS DE LA VIOLENCIA DE GENERO\n\nLa violencia de género puede darse en todos los grupos sociales y en todos los niveles socioeconómicos y culturales.\n\nEl agresor ejerce la violencia para someter a la mujer y perpetuar así la relación de dominio y control.\n\nLos actos violentos se repiten y aumentan mientras continúe la relación.\n\nEsto es lo que se denomina CICLO DE LA VIOLENCIA: que consta de tres fases y una vez instalado en una relación de pareja es muy difícil frenarlo, tendiendo a repetirse con más frecuencia.\n\n* ACUMULACIÓN DE TENSIÓN:\n\nEs el resultado de la acumulación de conflictos en la pareja. Se detecta al observar cambios imprevistos y repentinos en el estado de ánimo del agresor. Reacciones agresivas a sus frustraciones o ante cualquier señal de independencia que manifieste la mujer.\n\n* EXPLOSIÓN DE LA VIOLENCIA:\n\nEs el resultado de la tensión acumulada. Descarga de la tensión acumulada en la fase anterior. Esta descarga puede adoptar distintas formas y grados de intensidad.\n\n* LUNA DE MIEL:\n\nEs la fase de la manipulación afectiva. Disminuye la tensión. El agresor puede pedir perdón y prometer no volver a llevar a cabo acciones violentas. Reconoce su culpa y resurge la relación. Sin embargo, esta etapa dará paso a una nueva fase de tensión."
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    
    @IBAction func quehacerButton(sender: AnyObject) {
        cuadroTexto.text = "¿QUÉ HACER?\n\n1- Intena conservar la calma.\n\n2- Avisa a la Policía\n\nContacta telefónicamente, o acude al centro mas cercano, tu declaración será atendida por personal especializado y tendrás un asesoramiento permanente.\n\n3- No modifiques tu aspecto.\n\nNo te laves ni laves tus ropas, no alteres el lugar de la agresión.\n\nIdentifica y describe a tu agresor y todos los datos que consideres oportunos.\n\n4- Acude a centro médico, pide parte facultativo y realizate fotografías de las lesiones que tengas.\n\n5- Recuerda que puedes abandonar el domicilio familiar sin perder derechos, siempre que en un plazo de 30 días interpongas denuncia o demanda de separación. Si tienes miedo de regresar a por tus cosas llama a la policía o a la Guardia Civil para que te acompañen. Si puedes, lleva contigo lo más imprescindible:\n\n• El DNI o Pasaporte tuyo y de tus hijas e hijos.\n\n• Las tarjetas sanitaria y de la Seguridad Social.\n\n• El Libro de Familia\n\n• Certificados médicos tuyo y de tus hijas e hijos.\n\n• Libretas de Ahorro y tarjetas de crédito.\n\n• Permiso de trabajo si no tienes la nacionalidad española.\n\n• Además, si puedes, recoge toda la documentación que consideres importante como:\n\n• Permiso de Conducir\n\n• Dinero\n\n• Llaves\n\n• Contrato de arrendamiento de la vivienda o escrituras de la propiedad de la misma.\n\n• Documentos de Seguros.\n\n• Medicamentos.\n\n• Agenda de direcciones y de teléfonos de familiares y amigos.\n\n• Tu nómina y la de la persona con la que convives o bien copia de la última Declaración de la Renta.\n\nNo te preocupes si dejas algo atrás, la Policía puede acompañarte en cualquier momento si necesitas recoger algo de tu domicilio."
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    
    @IBAction func serviciosButton(sender: AnyObject) {
        cuadroTexto.text = "SERVICIOS DE PROTECCION\nEn el sistema de emergencia 911 habrá una respuesta priorizada al tema de la violencia contra las mujeres. “Cuando se produzca violencia doméstica, intrafamiliar o sexual, el primer actor del sistema de emergencia que llegue a la escena protegerá la victima e iniciará la cadena de custodia de evidencia”\nDirección Nacional  Atención a Víctimas  http://www.dnav.gov.do/contactos.html\nUnidad de Atención y Prevención de la Violencia. Violencia de Género y Abuso Sexual Provincia de Santo Domingo. Calle Ramón Marrero Aristy  No. 3 del ensanche Ozama. 809-593-7058.\nMinisterio de la Mujer. Av. México esq. Av. 30 de Marzo, Bloque D, Segundo Piso, Santo Domingo. (809) 685-3755 http://presidencia.gob.do/ministerio/ministerio-de-la-mujer\nCreado por la Ley 86-99, organismo responsable de establecer normas y políticas, planes y programas dirigidos a lograr la equidad de género."
        cuadroTexto.font = UIFont(name: "Arial", size: 20)
        cuadroTexto.textAlignment = NSTextAlignment.Justified
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
