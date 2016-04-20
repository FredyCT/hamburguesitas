//
//  ViewController.swift
//  hamburguesitas
//
//  Created by Fredy Cervantes Téllez on 19/04/16.
//  Copyright © 2016 CursoTecSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var etiquetaPais: UILabel!
    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    @IBOutlet weak var botonQuieroUnaHamburguesa: UIButton!
    
    let id_Paises = ColeccionDePaises()
    let id_Hamburguesas = ColeccionDeHamburguesas()
    let id_Colores = ColeccionDeColores()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarPaisHamburguesa() {
        etiquetaPais.text = id_Paises.obtenPais()
        etiquetaHamburguesa.text = id_Hamburguesas.obtenHamburguesa()
        let l_ColorTinte = id_Colores.obtenColorFondoTinte("Tinte")
        let l_ColorFondo = id_Colores.obtenColorFondoTinte("Fondo")
        
        self.navigationController?.navigationBar.barTintColor = l_ColorTinte
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: l_ColorFondo]
        self.view.backgroundColor = l_ColorFondo
        etiquetaPais.textColor = l_ColorTinte
        etiquetaHamburguesa.textColor = l_ColorTinte
        botonQuieroUnaHamburguesa.backgroundColor = l_ColorTinte
        botonQuieroUnaHamburguesa.tintColor = l_ColorFondo
        
        etiquetaPais.text = "País: " + id_Paises.obtenPais()
        etiquetaHamburguesa.text =  "Hamburguesa: " + id_Hamburguesas.obtenHamburguesa()
    }

}

