//
//  Datos.swift
//  hamburguesitas
//
//  Created by Fredy Cervantes Téllez on 19/04/16.
//  Copyright © 2016 CursoTecSwift. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    let paises = ["Angola", "Benin", "Gambia", "Ghana", "Gabón", "Níger", "Chad", "Malawi", "Uganda", "Tanzania", "Seychelles", "Liberia", "Botswana", "Eritrea", "Togo", "Burkina Faso", "Lesoto", "Sudán", "Congo", "Namibia"]
    
    func obtenPais ( ) -> String {
        let l_Posicion = Int(arc4random()) % paises.count
        
        return paises[l_Posicion]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas = ["Angoleña", "Beninesa", "Gambiana", "Ghanesa", "Gabonesa", "Nigerina", "Chadiana", "Malawiana", "Ugandesa", "Tanzana", "Seychellense", "Liberiana", "Botswanesa", "Eritrea", "Togolesa", "Burkinesa", "Lesotensa", "Sudanesa", "Congoleña", "Namibia"]
    
    func obtenHamburguesa ( ) -> String {
        let l_Posicion = Int(arc4random()) % hamburguesas.count
        
        return hamburguesas[l_Posicion]
    }
}