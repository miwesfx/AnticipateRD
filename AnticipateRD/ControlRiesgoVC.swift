//
//  ControlRiesgoVC.swift
//  AnticipateRD
//
//  Created by Miguel on 8/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class ControlRiesgoVC: UITableViewController {
    
    struct Objects {
        var sectionName : String!
        var sectionObjects: [String]!
    }
    
    var objectsArray = [Objects]()
    
    var NombresArray = [String]()
    var EnlacesArray = [String]()
    var ImagenesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NombresArray = ["Posición de seguridad","Desplazamientos","Esquivas","Desvíos", "Bloqueos", "Agarre de muñeca", "Agarre de brazo", "Agarre de cuello bajo", "Agarre de cuello arriba","Golpes directos","Golpe circular","Golpe ascendente","Golpe descendente","Amenaza arma blanca","Ataque arma blanca","Agresión arma blanca"]
        
        EnlacesArray = ["http://videos.escuelaprevencionviolencia.es/vg/posicionr.mp4", "http://videos.escuelaprevencionviolencia.es/vg/desplazamientosr.mp4", "http://videos.escuelaprevencionviolencia.es/vg/esquivar.mp4","http://videos.escuelaprevencionviolencia.es/vg/desviosr.mp4","http://videos.escuelaprevencionviolencia.es/vg/bloqueosr.mp4", "http://videos.escuelaprevencionviolencia.es/vg/munecar.mp4", "http://videos.escuelaprevencionviolencia.es/vg/brazor.mp4", "http://videos.escuelaprevencionviolencia.es/vg/cuellobajor.mp4", "http://videos.escuelaprevencionviolencia.es/vg/cuelloarribar.mp4", "http://videos.escuelaprevencionviolencia.es/vg/director.mp4","http://videos.escuelaprevencionviolencia.es/vg/cirularr.mp4","http://videos.escuelaprevencionviolencia.es/vg/ascendenter.mp4","http://videos.escuelaprevencionviolencia.es/vg/descendenter.mp4","http://videos.escuelaprevencionviolencia.es/vg/blancadelanter.mp4","http://videos.escuelaprevencionviolencia.es/vg/blancar.mp4","http://videos.escuelaprevencionviolencia.es/vg/contundenter.mp4"]
        
        ImagenesArray = ["posicion de seguridad","desplazamientos","esquivas","desvios","bloqueo","agarre muneca","agarre brazo","agarre cuello ba","agarre cuello al","agresion directo","agresion circular","agresion ascendente","agresion descendente","amenaza arma blanca","ataque arma blanca","arma contundente"]
        
        objectsArray = [Objects(sectionName: "Procedimientos defensivos", sectionObjects: ["Posición de seguridad","Desplazamientos","Esquivas","Desvíos", "Bloqueos"]),Objects(sectionName: "Suelta de agarres", sectionObjects: ["Agarre de muñeca", "Agarre de brazo", "Agarre de cuello bajo", "Agarre de cuello arriba"]),Objects(sectionName: "Ante agresiones físicas", sectionObjects: ["Golpes directos","Golpe circular","Golpe ascendente","Golpe descendente"]),Objects(sectionName: "Ante armas blancas", sectionObjects: ["Amenaza arma blanca","Ataque arma blanca"]),Objects(sectionName: "Ante armas contundentes", sectionObjects: ["Agresión arma blanca"])]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return NombresArray.count
        return objectsArray[section].sectionObjects.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return objectsArray.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectsArray[section].sectionName
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        //Cell.textLabel?.text = NombresArray[indexPath.row]
        
        Cell.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        
        //let imageView = Cell.viewWithTag(1) as! UIImageView
        
        Cell.imageView!.image = UIImage(named: ImagenesArray[indexPath.row])
        
        return Cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let DestViewController = segue.destinationViewController as! VideosVC
        
        DestViewController.cadena = EnlacesArray[indexPath.row]
    }
    
}