//
//  AlumnosController.swift
//  tables
//
//  Created by Maestro on 23/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import Foundation
import UIKit

class AlumnoController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    var alumnos :  [Alumno] = []
    
    @IBOutlet weak var tvAlumnos: UITableView!
    
    override func viewDidLoad() {
        self.title = "Alumnos"
        
        let alumno1 = Alumno(nombre: "Juan", apellidos: "Gonzalez", matricula: "159085", carrera: "IPM", foto: "1")
        let alumno2 = Alumno(nombre: "Dan", apellidos: "Granger", matricula: "159085", carrera: "IPM", foto: "2")
        let alumno3 = Alumno(nombre: "Harry", apellidos: "Potter", matricula: "159085", carrera: "IPM", foto: "3")
        let alumno4 = Alumno(nombre: "Ron", apellidos: "Weasley", matricula: "159085", carrera: "Ing. en Producción Multimedia", foto: "4")
        alumnos.append(alumno1)
        alumnos.append(alumno2)
        alumnos.append(alumno3)
        alumnos.append(alumno4)
        
        alumnos[0].materias.append (Materia(nombre: "Matematicas"))
        alumnos[0].materias.append(Materia(nombre: "Animación 1"))
        alumnos[1].materias.append(Materia(nombre: "Historia del Arte 1"))
        
        alumnos[0].materias[0].calificacionPrimerParcial = 10
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celdaAlumno") as! CeldaAlumnoController
        //AS = tratalo como
        celda.lblNombreAlumno.text = alumnos[indexPath.row].nombre + " " + alumnos[indexPath.row].apellidos
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        celda.imgFoto.image = alumnos[indexPath.row].imgFoto
        return celda
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToMaterias"{
            let materiasController = segue.destinationViewController as! MateriasViewController
            materiasController.alumno = alumnos[tvAlumnos.indexPathForSelectedRow!.row]
            

        }
    }


}

