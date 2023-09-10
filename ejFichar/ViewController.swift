//
//  ViewController.swift
//  ejFichar
//
//  Created by Javier Rodríguez Valentín on 15/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var insertName: UITextField!
    @IBOutlet weak var insertSurname: UITextField!
    @IBOutlet weak var insertHours: UITextField!
    @IBOutlet weak var insertDepart: UITextField!
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var labelHours: UILabel!
    @IBOutlet weak var labelDepart: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func submitEmpleados(_ sender: Any) {
        var empleado = Empleado(nombre: insertName.text!, apellidos: insertSurname.text!, horaEntrada: insertHours.text!, departamaneto: insertDepart.text!)
        
        Limpiar()
        labelDepart.isHidden = false
        
        labelName.text = "Nombre: \(empleado.getName())"
        labelSurname.text = "Apellidos: \(empleado.getSurname())"
        labelHours.text = "Hora de Entrada: \(empleado.getHEntrada())"
        labelDepart.text = "Departamento: \(empleado.getDepartamento())"
    }
    
    
    @IBAction func submitPersonas(_ sender: Any) {
        
        var persona = Persona(nombre: insertName.text!, apellidos: insertSurname.text!, hEnt: insertHours.text!)
        
        Limpiar()
        labelDepart.isHidden = true
        
        labelName.text = "Nombre: \(persona.getName())"
        labelSurname.text = "Apellidos: \(persona.getSurname())"
        labelHours.text = "Hora de Entrada: \(persona.getHEntrada())"
    }
    
    func Limpiar(){
        labelName.text = " "
        labelSurname.text = " "
        labelHours.text = " "
        labelDepart.text = " "
    }
    
}

