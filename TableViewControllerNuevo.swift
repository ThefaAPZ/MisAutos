//
//  TableViewControllerNuevo.swift
//  MisAutos
//
//  Created by Mireya Esthefany Apaza Cuicapuza  on 1/06/24.
//

import UIKit

class TableViewControllerNuevo: UITableViewController {
    
    var arregloAutos: [String] = ["BMW Serie 4","BMW Z4 sDrive","Maserati MC20","BMW Z4 M40i","Lexus LC Cabrio","Volkswagen Beetle","BMW Serie3","Seat LeónSportstourer","Opel InsigniaSports","BMW i5 Touring"]
    
    var descripcionesAmpliadas: [String: String] = [
        //auto1
        "BMW Serie 4": "Su precio está en 88.000$, su tipo de motor es híbrido, tiene un alto de 1394mm, un largo de 4770mm y un ancho de 1842mm, su potencia es de 374CV/6500. Tiene una potencia conjunta de 374CV, su velocidad máxima es de 250KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8. Su peso es de 1965KG.",
        //auto2
        "BMW Z4 sDrive": "Su precio está en 59.000$, su tipo de motor es combustion, tiene un alto de 1304mm, un largo de 4324mm y un ancho de 1864mm, su potencia es de 258CV/6500. Su velocidad máxima es de 250KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8. Su peso es de 1505KG.",
        //auto3
        "Maserati MC20": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        //auto4
        "BMW Z4 M40i": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        //auto5
        "Lexus LC Cabrio": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        //auto6
        "Volkswagen Beetle": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        //auto7
        "BMW Serie3": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        //auto8
        "Seat LeónSportstourer": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        //auto9
        "Opel InsigniaSports": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        //auto10
        "BMW i5 Touring": "Su tipo de motor es combustion, tiene un alto de 1218mm, un largo de 4669mm y un ancho de 1965mm, su potencia es de 630CV/7500. Su velocidad máxima es de 320KM/H. Utiliza como combustible la gasolina, sus cambios son automáticos y su número de velocidades es de 8.",
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        setEditing(true, animated: true)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloAutos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = arregloAutos[indexPath.row]
        switch cell.textLabel?.text {
        //auto1
        case "BMW Serie 4":
            cell.imageView?.image = UIImage(named: "ICONOS/auto1.tiff")
            cell.detailTextLabel?.text = "Diseño, estanqueidad y rapidez de la capota, comportamiento, tecnología, acabados."
        //auto2
        case "BMW Z4 sDrive":
            cell.imageView?.image = UIImage(named: "ICONOS/auto2.tiff")
            cell.detailTextLabel?.text = "La calidad general, el paso de los kilómetros no ha hecho mella alguna en el Z4."
        //auto3
        case "Maserati MC20":
            cell.imageView?.image = UIImage(named: "ICONOS/auto3.tiff")
            cell.detailTextLabel?.text = "Prestaciones, diseño, comportamiento, respuesta del motor."
        //auto4
        case "BMW Z4 M40i":
            cell.imageView?.image = UIImage(named: "ICONOS/auto4.tiff")
            cell.detailTextLabel?.text = "Conducción, amortiguación, diferencial autoblocante, comportamiento."
        //auto5
        case "Lexus LC Cabrio":
            cell.imageView?.image = UIImage(named: "ICONOS/auto5.tiff")
            cell.detailTextLabel?.text = "Su elegante y refinado diseño, su lujoso interior y su fabulosos motor V8 atmosférico de 477 CV y 540 Nm de par."
        //auto6
        case "Volkswagen Beetle":
            cell.imageView?.image = UIImage(named: "ICONOS/auto6.tiff")
            cell.detailTextLabel?.text = "Equipamiento específico, detalles estéticos y colores de la carrocería."
        //auto7
        case "BMW Serie3":
            cell.imageView?.image = UIImage(named: "ICONOS/auto7.tiff")
            cell.detailTextLabel?.text = "Prestaciones, dinamismo, confort, consumo bajo, acabados, interior práctico."
        //auto8
        case "Seat LeónSportstourer":
            cell.imageView?.image = UIImage(named: "ICONOS/auto8.tiff")
            cell.detailTextLabel?.text = "Los acabados, la tecnología y el espacio lo hacen un coche muy cómodo y equilibrado."
        //auto9
        case "Opel InsigniaSports":
            cell.imageView?.image = UIImage(named: "ICONOS/auto9.tiff")
            cell.detailTextLabel?.text = "Imagen más exclusiva, posibilidades de uso fuera del asfalto reales."
        //auto10
        case "BMW i5 Touring":
            cell.imageView?.image = UIImage(named: "ICONOS/auto10.tiff")
            cell.detailTextLabel?.text = "Respuesta del motor, tracción, calidad interior, tecnología."
        
        default:
            print("No hay mas elementos para llenar imagen")
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arregloAutos.remove(at: indexPath.row)
            tableView.reloadData()
        } else if editingStyle == .insert {
        }
    }

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let objetoMovido = self.arregloAutos[fromIndexPath.row]
        arregloAutos.remove(at: fromIndexPath.row)
        arregloAutos.insert(objetoMovido, at: to.row)
        NSLog("%@", "\(fromIndexPath.row) => \(to.row) \(arregloAutos)")
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        if (self.isEditing) {
            self.editButtonItem.title = "Editar"
        }
        else {
            self.editButtonItem.title = "Hecho"
        }
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        //Eliminar
        let botonEliminar = UITableViewRowAction(style: .normal, title: "Eliminar")
        { (accionesFila, indiceFila) in
            self.arregloAutos.remove(at: indexPath.row)
            tableView.reloadData()
        }
        botonEliminar.backgroundColor = UIColor.red
        
        //Ver mas
        let botonVerMas = UITableViewRowAction(style: .normal, title: "Ver más") { (accionesFila, indiceFila) in
                self.performSegue(withIdentifier: "mostrarDetalles", sender: indexPath)
        }
        botonVerMas.backgroundColor = UIColor.blue
        
        return[botonEliminar,botonVerMas]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrarDetalles" {
            if let indexPath = sender as? IndexPath {
                let detailsViewController = segue.destination as! descriptionViewController
                let tituloAuto = arregloAutos[indexPath.row]
                detailsViewController.titulo = tituloAuto
                detailsViewController.imagen = UIImage(named: "ICONOS/auto\(indexPath.row + 1).tiff")
                detailsViewController.descripcion = descripcionesAmpliadas[tituloAuto] ?? ""
            }
        }
    }
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
}
