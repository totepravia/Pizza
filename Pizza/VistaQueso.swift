//
//  VistaQueso.swift
//  Pizza
//
//  Created by Sara Fernández Menéndez on 28/4/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {

    var resultadoTamano:String = ""
    var resultadoMasa:String = ""
    var resultadoQueso:String = ""
    var queso:String = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let opcion3=queso
        let sigVista = segue.destination as! VistaIngredientes
        sigVista.resultadoTamano=self.resultadoTamano
        sigVista.resultadoMasa=self.resultadoMasa
        sigVista.resultadoQueso=opcion3
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(resultadoTamano+"/"+resultadoMasa+"/"+queso)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func escogeMozarela() {
        queso = "Mozarela"
    }
    
    @IBAction func escogeCheddar() {
        queso = "Cheddar"
    }
    
    @IBAction func escogeParmesano() {
        queso = "Parmesano"
    }
    
    @IBAction func escogeSinQueso() {
        queso = "Sin queso"
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
