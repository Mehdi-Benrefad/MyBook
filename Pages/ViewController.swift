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
    
    var PageTitle=String() , PageDescription=String()
    override func viewDidLoad() {
        super.viewDidLoad()
        Titre.text = PageTitle
        Description.text = PageDescription
        // Do any additional setup after loading the view.
    }


}

