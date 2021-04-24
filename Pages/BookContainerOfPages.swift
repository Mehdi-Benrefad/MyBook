//
//  BookContainerOfPages.swift
//  Pages
//
//  Created by Mehdi Benrefad on 24/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class BookContainerOfPages: UIPageViewController ,  UIPageViewControllerDelegate , UIPageViewControllerDataSource {
    var titre=String()
    var pages = [UIViewController]()
    var livre = [Page]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
         if(titre == "Le Dernier Jour d’un condamné"){
                livre = dernierJour
                   
               }
        
        for i in 0...livre.count-1{
            let page1 = storyboard?.instantiateViewController(identifier: "page") as! BookContentViewController
            page1.texte = livre[i].content
            pages.append(page1)
            //page1.PageColor = #colorLiteral(red: 0.9309845567, green: 0.6428451538, blue: 0.310287118, alpha: 1) //using color literal
        }
        
        //definir cette classe comme delegate et datasource du pageViewController
        delegate = self
        dataSource = self
        
        //on affiche la premiere page [par defaut c est la premiere page qui doit etre affichee]
        if let firstpage = pages.first {
            setViewControllers([firstpage], direction: .forward, animated: true, completion: nil)
        }
        
    }
    

    //lorcequ on defile a droite
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.firstIndex(of: viewController) else{
            return nil
        }
        
        let previous = index-1
        
        guard previous >= 0 else{
            return pages.last
        }
        
        return pages[previous]
    }
    
    
    
    //lorcequ on defile a gauche
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.firstIndex(of: viewController) else{
            return nil
        }
        
        let next = index+1
        
        guard next < pages.count else{
            return pages.first
        }
        return pages[next]
    }
    

}
