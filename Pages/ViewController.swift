//
//  ViewController.swift
//  Pages
//
//  Created by Mehdi Benrefad on 23/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Titre: UILabel!
    @IBOutlet weak var Description: UILabel!
    var PageColor : UIColor?
    var PageTitle=String() , PageDescription=String()
    override func viewDidLoad() {
        super.viewDidLoad()
        Titre.text = PageTitle
        Description.text = PageDescription
        view.backgroundColor = PageColor
        // Do any additional setup after loading the view.
    }

    
    //passer le nom du livre via [Segue] afin de le charger
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "segueToBook"{
               //recuperer le controlleur de destination
               let book = segue.destination as! BookViewController
            book.titre = Titre.text!
            
               //ce segue sera lance dans la methode valider en haut
           }
       }}

