//
//  Calificaciones.swift
//  tables
//
//  Created by Maestro on 29/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import Foundation
import UIKit

class descripcion: UIViewController{
    var alumno : Alumno?
    var materia : Materia?
    
    @IBOutlet weak var nombreAlumno: UILabel!
    @IBOutlet weak var cal1: UILabel!
    @IBOutlet weak var materiaNombre: UILabel!

    @IBOutlet weak var cal2: UILabel!
    
    @IBOutlet weak var cal3: UILabel!
    
    @IBOutlet weak var descripcion: UILabel!
    
    override func viewDidLoad() {
        nombreAlumno.text = "\(alumno!.nombre) \(alumno!.apellidos)"
        materiaNombre.text = materia!.nombre
        
        if let calificacionPrimerParcial = materia!.calificacionPrimerParcial{
            cal1.text = String(calificacionPrimerParcial)
        }
        if let calificacionSegundoParcial = materia!.calificacionSegundoParcial{
            cal2.text = String(calificacionSegundoParcial)
        }
        if let calificacionTercerParcial = materia!.calificacionTercerParcial{
            cal3.text = String(calificacionTercerParcial)
        }
        
    }
    
    
}