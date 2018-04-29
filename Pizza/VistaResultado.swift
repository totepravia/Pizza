//
//  VistaResultado.swift
//  Pizza
//
//  Created by Sara Fernández Menéndez on 28/4/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import UIKit

class VistaResultado: UIViewController {

    var resultadoTamano:String = ""
    var resultadoMasa:String = ""
    var resultadoQueso:String = ""
    var ingrediente1:String = ""
    var ingrediente2:String = ""
    var ingrediente3:String = ""
    var ingrediente4:String = ""
    var ingrediente5:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let anteriorVista = segue.destination as! VistaIngredientes
        //Inicializo todos los ingredientes
        anteriorVista.ingredientes=""
        anteriorVista.ingrediente1=""
        anteriorVista.ingrediente2=""
        anteriorVista.ingrediente3=""
        anteriorVista.ingrediente4=""
        anteriorVista.ingrediente5=""
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelTamano.text=resultadoTamano
        labelMasa.text=resultadoMasa
        labelQueso.text=resultadoQueso
        labelIngrediente1.text=ingrediente1
        labelIngrediente2.text=ingrediente2
        labelIngrediente3.text=ingrediente3
        labelIngrediente4.text=ingrediente4
        labelIngrediente5.text=ingrediente5
    }
    
    @IBOutlet weak var labelTamano: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var labelIngrediente1: UILabel!
    @IBOutlet weak var labelIngrediente2: UILabel!
    @IBOutlet weak var labelIngrediente3: UILabel!
    @IBOutlet weak var labelIngrediente4: UILabel!
    @IBOutlet weak var labelIngrediente5: UILabel!
    @IBOutlet weak var labelMensaje: UILabel!
    
    @IBAction func confirmar() {
        labelMensaje.text="El pedido ha sido enviado a cocina"
    }
}
