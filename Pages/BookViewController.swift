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
    @IBOutlet weak var page: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        page.text = titre
        print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
        print(titre)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
