//
//  AgregarContactoController.swift
//  informacion
//
//  Created by Alumno on 10/4/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit


class AgregarContactoController : UIViewController {
    
    var contacto : Contacto?
    
    var callbackAgregar : (() -> Void)?
    
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    
    override func viewDidLoad() {
        txtNombre.text = contacto?.nombre
        txtNumero.text = contacto?.telefono
    }
    
    
    @IBAction func doTapAgregar(_ sender: Any) {
        contacto?.nombre = txtNombre.text
        contacto?.telefono = txtNumero.text
        
        callbackAgregar!()
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
