//
//  ViewController.swift
//  Pizza
//
//  Created by Sara Fernández Menéndez on 28/4/18.
//  Copyright © 2018 Guillermo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tamano:String=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let opcion1=tamano
        let sigVista = segue.destination as! VistaMasa
        sigVista.resultadoTamano = opcion1
    }

    @IBOutlet weak var botonChica: UIButton!
    @IBOutlet weak var botonMediana: UIButton!
    @IBOutlet weak var botonGrande: UIButton!
    @IBAction func escogeChica() {
        tamano = "Chica"
    }
    @IBAction func escogeMediana() {
        tamano = "Mediana"
    }
    @IBAction func escogeGrande() {
        tamano = "Grande"
    }
}

