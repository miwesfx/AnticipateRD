//
//  ControlRiesgoVC.swift
//  AnticipateRD
//
//  Created by Miguel on 8/4/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class ControlRiesgoVC: UITableViewController {
    
    var NombresArray = [String]()
    var EnlacesArray = [String]()
    var ImagenesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NombresArray = ["Posición de seguridad","Desplazamientos","Esquivas","Desvíos", "Bloqueos", "Agarre de muñeca", "Agarre de brazo", "Agarre de cuello bajo", "Agarre de cuello arriba","Golpes directos","Golpe circular","Golpe ascendente","Golpe descendente","Amenaza arma blanca","Ataque arma blanca","Agresión arma blanca"]
        
        EnlacesArray = ["http://videos.escuelaprevencionviolencia.es/vg/posicionr.mp4", "http://videos.escuelaprevencionviolencia.es/vg/desplazamientosr.mp4", "http://videos.escuelaprevencionviolencia.es/vg/esquivar.mp4","http://videos.escuelaprevencionviolencia.es/vg/desviosr.mp4","http://videos.escuelaprevencionviolencia.es/vg/bloqueosr.mp4", "http://videos.escuelaprevencionviolencia.es/vg/munecar.mp4", "http://videos.escuelaprevencionviolencia.es/vg/brazor.mp4", "http://videos.escuelaprevencionviolencia.es/vg/cuellobajor.mp4", "http://videos.escuelaprevencionviolencia.es/vg/cuelloarribar.mp4", "http://videos.escuelaprevencionviolencia.es/vg/director.mp4","http://videos.escuelaprevencionviolencia.es/vg/cirularr.mp4","http://videos.escuelaprevencionviolencia.es/vg/ascendenter.mp4","http://videos.escuelaprevencionviolencia.es/vg/descendenter.mp4","http://videos.escuelaprevencionviolencia.es/vg/blancadelanter.mp4","http://videos.escuelaprevencionviolencia.es/vg/blancar.mp4","http://videos.escuelaprevencionviolencia.es/vg/contundenter.mp4"]
        
        ImagenesArray = ["abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso","abuso"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NombresArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = NombresArray[indexPath.row]
        
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