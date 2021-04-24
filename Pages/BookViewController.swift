//
//  BookViewController.swift
//  Pages
//
//  Created by Mehdi Benrefad on 24/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {
    var titre : String!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var page: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
            page.text = titre
        
            if titre == "La Boîte à merveilles"{
                image.image = UIImage(named:  "laboiteamerveilles")
            }else if titre == "Antigonne" {
                image.image = UIImage(named:  "antigonne")
            }else if titre == "Le Dernier Jour d’un condamné"{
                image.image = UIImage(named:  "dernierjourduncondamne")
            }
        
    }
    

    //passer le nom du livre via [Segue] afin de le charger
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPagesLoad"{
            //recuperer le controlleur de destination
            let book = segue.destination as! BookContainerOfPages
            book.titre = titre
         
            //ce segue sera lance dans la methode valider en haut
        }
    }
    
    @IBAction func unwindBookToFirstPage(segue:UIStoryboardSegue) { }
    
}
