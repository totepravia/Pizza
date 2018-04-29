//
//  VistaIngredientes.swift
//  Pizza
//
//  Created by Sara Fernández Menéndez on 28/4/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    
    var resultadoTamano:String = ""
    var resultadoMasa:String = ""
    var resultadoQueso:String = ""
    var ingrediente1:String = ""
    var ingrediente2:String = ""
    var ingrediente3:String = ""
    var ingrediente4:String = ""
    var ingrediente5:String = ""
    var numeroIngredientes = 0
    var ingredientes:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(resultadoTamano+";"+resultadoMasa+";"+resultadoQueso)
        self.ingredientes=""
        self.ingrediente1=""
        self.ingrediente2=""
        self.ingrediente3=""
        self.ingrediente4=""
        self.ingrediente5=""
        labelMensaje.text=""
        self.numeroIngredientes=0
        botonEscoger.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! VistaResultado
        sigVista.resultadoTamano=self.resultadoTamano
        sigVista.resultadoMasa=self.resultadoMasa
        sigVista.resultadoQueso=self.resultadoQueso
        sigVista.ingrediente1 = self.ingrediente1
        sigVista.ingrediente2 = self.ingrediente2
        sigVista.ingrediente3 = self.ingrediente3
        sigVista.ingrediente4 = self.ingrediente4
        sigVista.ingrediente5 = self.ingrediente5
    }

    @IBOutlet weak var labelMensaje: UILabel!
    @IBOutlet weak var switchJamon: UISwitch!
    @IBOutlet weak var switchPeperoni: UISwitch!
    @IBOutlet weak var switchPavo: UISwitch!
    @IBOutlet weak var switchSalchicha: UISwitch!
    @IBOutlet weak var switchAceituna: UISwitch!
    @IBOutlet weak var switchCebolla: UISwitch!
    @IBOutlet weak var switchPimiento: UISwitch!
    @IBOutlet weak var switchPina: UISwitch!
    @IBOutlet weak var switchAnchoa: UISwitch!
    
    @IBOutlet weak var botonEscoger: UIButton!
    
    @IBAction func validarIngredientes() {
        numeroIngredientes = 0
        labelMensaje.text=""
        botonEscoger.isEnabled=false
        // Control de número de ingredientes
        if (switchJamon.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchPeperoni.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchPavo.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchSalchicha.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchAceituna.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchCebolla.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchPimiento.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchPina.isOn){numeroIngredientes=numeroIngredientes+1}
        if (switchAnchoa.isOn){numeroIngredientes=numeroIngredientes+1}
        
        if (numeroIngredientes > 5){
            labelMensaje.text="Sólo puede escoger 5 ingredientes máximo"
        }else{
            botonEscoger.isEnabled=true
        }
    }
    @IBAction func escoger() {

        // Informo en cada variable
        if (switchJamon.isOn){ingredientes="Jamón"}
        if (switchPeperoni.isOn){ingredientes=ingredientes+";"+"Peperoni"}
        if (switchPavo.isOn){ingredientes=ingredientes+";"+"Pavo"}
        if (switchSalchicha.isOn){ingredientes=ingredientes+";"+"Salchicha"}
        if (switchAceituna.isOn){ingredientes=ingredientes+";"+"Aceituna"}
        if (switchCebolla.isOn){ingredientes=ingredientes+";"+"Cebolla"}
        if (switchPimiento.isOn){ingredientes=ingredientes+";"+"Pimiento"}
        if (switchPina.isOn){ingredientes=ingredientes+";"+"Piña"}
        if (switchAnchoa.isOn){ingredientes=ingredientes+";"+"Anchoa"}
        
        let partesIngredientes = ingredientes.components(separatedBy: ";")
        let numero = partesIngredientes.count
        if (numero>0){
            if (!partesIngredientes[0].isEmpty){
                ingrediente1 = partesIngredientes[0]
                print(ingrediente1)
            }
        }
        if (numero>1){
            if (!partesIngredientes[1].isEmpty){
                ingrediente2 = partesIngredientes[1]
                print(ingrediente2)
            }
        }
        if (numero>2){
            if (!partesIngredientes[2].isEmpty){
                ingrediente3 = partesIngredientes[2]
                print(ingrediente3)
            }
        }
        if (numero>3){
            if (!partesIngredientes[3].isEmpty){
                ingrediente4 = partesIngredientes[3]
                print(ingrediente4)
            }
        }
        if (numero>4){
            if (!partesIngredientes[4].isEmpty){
                ingrediente5 = partesIngredientes[4]
                print(ingrediente5)
            }
        }
        
        // Navegación a la última página
        /*let storyBoard : UIStoryboard = UIStoryboard(name: "vistaIngredientes", bundle:nil)
        let miVistaResultado = storyBoard.instantiateViewController(withIdentifier: "idVistaResultado") as! VistaResultado
        self.present(miVistaResultado, animated:true, completion:nil)*/
    }

    
}
