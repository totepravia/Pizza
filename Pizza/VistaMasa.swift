//
//  VistaMasa.swift
//  Pizza
//
//  Created by Sara Fernández Menéndez on 28/4/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController {
    
    var resultadoTamano:String = ""
    var masa:String=""
    
    override func viewWillAppear(_ animated: Bool) {
        print(resultadoTamano)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let opcion2 = masa
        let sigVista = segue.destination as! VistaQueso
        sigVista.resultadoMasa=opcion2
        sigVista.resultadoTamano=self.resultadoTamano
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func escogerDelgada() {
        masa = "Delgada"
    }
    
    @IBAction func escogerCrujiente() {
        masa = "Crujiente"
    }
    
    @IBAction func escogerGruesa() {
        masa = "Gruesa"
    }
}
