//
//  descriptionViewController.swift
//  MisAutos
//
//  Created by Mireya Esthefany Apaza Cuicapuza  on 1/06/24.
//

import UIKit

class descriptionViewController: UIViewController {
    
    var titulo: String?
    var imagen: UIImage?
    var descripcion: String?
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var imagenView: UIImageView!
    @IBOutlet weak var descripcionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tituloLabel.text = titulo
        imagenView.image = imagen
        descripcionLabel.text = descripcion
    }
}
