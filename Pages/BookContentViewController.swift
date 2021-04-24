//
//  BookContentViewController.swift
//  Pages
//
//  Created by Mehdi Benrefad on 24/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class BookContentViewController: UIViewController {
    @IBOutlet weak var titre: UILabel!
    @IBOutlet weak var page: UILabel!
    @IBOutlet weak var pageContent: UILabel!
    var texte = String()
    var titreSection = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        titre.text = titreSection
        pageContent.text = texte
    }
    

    
}
