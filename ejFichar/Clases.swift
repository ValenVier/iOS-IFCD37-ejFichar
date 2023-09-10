import Foundation

class Persona{
    
    //Propiedades
    private var nombre:String?
    private var apellidos:String?
    private var horaEntrada:String?
    
    //Constructores
    init (nombre nom:String, apellidos apel:String, hEnt:String){
        self.nombre = nom
        self.apellidos = apel
        self.horaEntrada = hEnt
    }
    
    //Métodos getter & setter
    func getName()->String{
        if let nom = self.nombre{
            return nom
        }else{
            return ""
        }
    }
    func setName(Nombre:String){
        self.nombre = Nombre
    }
    
    func getSurname()->String{
        if let apel = self.apellidos{
            return apel
        }else{
            return ""
        }
    }
    func setSurname(Apellidos:String){
        self.apellidos = Apellidos
    }
    
    func getHEntrada()->String{
        if let hEnt = self.horaEntrada{
            return hEnt
        }else{
            return ""
        }
    }
    func setHEntrada(hEnt:String){
        self.horaEntrada = hEnt
    }
    
    //Métodos
    
}

class Empleado:Persona{
    
    private var departamento:String?
    
    init(nombre nom:String, apellidos apel:String, horaEntrada hEnt:String, departamaneto depart:String){
        super .init(nombre: nom, apellidos: apel, hEnt: hEnt)
        self.departamento = depart
    }
    
    func getDepartamento()->String{
        if let depart = self.departamento{
            return depart
        }else{
            return ""
        }
    }
    func setDepartamento(Departamento:String){
        self.departamento = Departamento
    }
    
}
