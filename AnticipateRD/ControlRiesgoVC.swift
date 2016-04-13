//
//  ControlRiesgoVC.swift
//  AnticipateRD
//
//  Created by Miguel on 8/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ControlRiesgoVC: UITableViewController {
    
    struct Objects {
        var sectionName : String!
        var sectionObjects: [String]!
        var sectionURL: [String]!
        var sectionImage: [String]!
    }
    
    var objectsArray = [Objects]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        objectsArray = [Objects(sectionName: "Procedimientos defensivos", sectionObjects: ["Posición de seguridad","Desplazamientos","Esquivas","Desvíos", "Bloqueos"], sectionURL: ["http://videos.escuelaprevencionviolencia.es/vg/posicionr.mp4","http://videos.escuelaprevencionviolencia.es/vg/desplazamientosr.mp4","http://videos.escuelaprevencionviolencia.es/vg/esquivar.mp4","http://videos.escuelaprevencionviolencia.es/vg/desviosr.mp4","http://videos.escuelaprevencionviolencia.es/vg/bloqueosr.mp4"], sectionImage: ["posicion de seguridad","desplazamientos","esquivas","desvios","bloqueo"]),Objects(sectionName: "Suelta de agarres", sectionObjects: ["Agarre de muñeca", "Agarre de brazo", "Agarre de cuello bajo", "Agarre de cuello arriba"], sectionURL: ["http://videos.escuelaprevencionviolencia.es/vg/munecar.mp4", "http://videos.escuelaprevencionviolencia.es/vg/brazor.mp4", "http://videos.escuelaprevencionviolencia.es/vg/cuellobajor.mp4", "http://videos.escuelaprevencionviolencia.es/vg/cuelloarribar.mp4"], sectionImage: ["agarre muneca","agarre brazo","agarre cuello ba","agarre cuello al","agresion directo"]),Objects(sectionName: "Ante agresiones físicas", sectionObjects: ["Golpes directos","Golpe circular","Golpe ascendente","Golpe descendente"],sectionURL: ["http://videos.escuelaprevencionviolencia.es/vg/director.mp4","http://videos.escuelaprevencionviolencia.es/vg/cirularr.mp4","http://videos.escuelaprevencionviolencia.es/vg/ascendenter.mp4","http://videos.escuelaprevencionviolencia.es/vg/descendenter.mp4"], sectionImage: ["agresion directo","agresion circular","agresion ascendente","agresion descendente"]),Objects(sectionName: "Ante armas blancas", sectionObjects: ["Amenaza arma blanca","Ataque arma blanca"],sectionURL: ["http://videos.escuelaprevencionviolencia.es/vg/blancadelanter.mp4","http://videos.escuelaprevencionviolencia.es/vg/blancar.mp4"], sectionImage: ["amenaza arma blanca","ataque arma blanca"]),Objects(sectionName: "Ante armas contundentes", sectionObjects: ["Agresión arma blanca"], sectionURL: ["http://videos.escuelaprevencionviolencia.es/vg/contundenter.mp4"],sectionImage: ["arma contundente"])]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return objectsArray.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectsArray[section].sectionName
    }
    
    /*override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vista = UIView()
        vista.backgroundColor = UIColor.greenColor()
        
        let etiqueta = UILabel()
        etiqueta.text = objectsArray[section].sectionName
        etiqueta.textColor = UIColor.redColor()
        etiqueta.textAlignment = NSTextAlignment.Center
        
        vista.addSubview(etiqueta)
        
        return vista
    }*/
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        Cell.imageView!.image = UIImage(named: objectsArray[indexPath.section].sectionImage[indexPath.row])
        
        return Cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let DestViewController = segue.destinationViewController as! AVPlayerVC
        
        let direccion = NSURL(string: objectsArray[indexPath.section].sectionURL[indexPath.row])!
        DestViewController.player = AVPlayer(URL: direccion)
        DestViewController.player?.play()
    }
    
}