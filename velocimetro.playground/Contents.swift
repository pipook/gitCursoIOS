//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var result = (0, "")
        switch self.velocidad {
        case .Apagado:
            result = (self.velocidad.rawValue, "Apagado")
            self.velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            result = (self.velocidad.rawValue, "Velocidad baja")
            self.velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            result = (self.velocidad.rawValue, "Velocidad media")
            self.velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            result = (self.velocidad.rawValue, "Velocidad alta")
            self.velocidad = Velocidades.VelocidadMedia
        }
        return result
    }
}
var auto = Auto()
var result : (Int, String) = (0, "")
for i in 0...20 {
    result = auto.cambioDeVelocidad()
    print("\(result.0), \(result.1)")
}
