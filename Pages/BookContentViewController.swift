//
//  BookContentViewController.swift
//  Pages
//
//  Created by Mehdi Benrefad on 24/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class BookContentViewController: UIViewController {
    @IBOutlet weak var page: UILabel!
    var texte = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        page.text = texte
    }
    

    
}
