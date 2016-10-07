//
//  ViewController.swift
//  tables
//
//  Created by Maestro on 22/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import UIKit

class MateriasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let materiasx = ["Tratamiento de imagen", "Animacion I", "Pensamiento Cristiano", "Dispositvos moviles", "Mexico en el Contexto Global", "Redes", "Marketing"]
    
    var alumno : Alumno?
    
    //var materias: [Materia] = []
    @IBOutlet weak var tvMaterias: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Mis materias"
        
        //Agregar al final de un arreglo dinamico
           
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //Una seccion
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Solo 5 filas
        return alumno!.materias.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Son las celdas
        
        let celda=tvMaterias.dequeueReusableCellWithIdentifier("celdaMateria")
        celda?.textLabel?.text=alumno!.materias[indexPath.row].nombre
        
        return celda!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToDetalleMateria"{
            let detalleMateriaController = segue.destinationViewController as! descripcion
            detalleMateriaController.alumno=alumno
            detalleMateriaController.materia = alumno?.materias[tvMaterias.indexPathForSelectedRow!.row]
        }
    }
    
    
    
}

