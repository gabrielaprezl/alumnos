//
//  Materias.swift
//  tables
//
//  Created by Maestro on 23/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
// El signo de interregacion es para decir que puede o no ser

import Foundation

class Materia{
    var nombre : String
    var descripcion : String?
    
      
    var calificacionPrimerParcial : Double?
    var calificacionSegundoParcial : Double?
    var calificacionTercerParcial : Double?
    var calificacionFinal : Double?
    
    init(){
        nombre="Nueva materia"
    
    } //Constructor
    
    init(nombre : String){
    self.nombre=nombre //Self hace referencia a la clase
    }
    
    init(nombre: String, descripcion: String){
        self.nombre=nombre
        self.descripcion=descripcion
    }
    
    init(nombre: String, calificacionPrimerParcial: Double?, calificacionSegundoParcial: Double?, calificacionTercerParcial: Double?, calificacionFinal: Double?){
        self.nombre=nombre
        self.calificacionPrimerParcial=calificacionPrimerParcial
        self.calificacionSegundoParcial = calificacionSegundoParcial
        self.calificacionTercerParcial = calificacionTercerParcial
        self.calificacionFinal = calificacionFinal
    }
}