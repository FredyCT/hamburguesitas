//
//  PaletaColores.swift
//  hamburguesitas
//
//  Created by Fredy Cervantes Téllez on 20/04/16.
//  Copyright © 2016 CursoTecSwift. All rights reserved.
//

import Foundation
import UIKit

struct ColeccionDeColores {
    var coloresFondo = [UIColor(red: 0/255.00, green: 0/255.00, blue: 0/255.00, alpha: 1)]
    var coloresTinte = [UIColor(red: 255/255.00, green: 255/255.00, blue: 255/255.00, alpha: 1)]
    
    init() {
        for li_i in 1 ..< 20  {
            let lf_Contador = CGFloat(li_i)
            coloresFondo.append(UIColor(red: lf_Contador*10/255.00, green: (lf_Contador + 17)*10/255.00, blue: (lf_Contador + 23)*10/255.00, alpha: 1))
            coloresTinte.append(UIColor(red: (255 - lf_Contador*10)/255.00, green: (255 - (lf_Contador + 17)*10)/255.00, blue: (255 - (lf_Contador + 23)*10)/255.00, alpha: 1))
        }
    }
    
    func obtenColorFondoTinte(TipoColor:String) -> UIColor {
        let l_Posicion = Int(arc4random()) % coloresFondo.count
        var l_Color:UIColor!
        
        if TipoColor == "Fondo" {
            l_Color = coloresFondo[l_Posicion]
        } else {
            l_Color = coloresTinte[l_Posicion]
        }
        
        return l_Color
    }
}