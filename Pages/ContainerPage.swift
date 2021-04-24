//
//  ContainerPage.swift
//  Pages
//
//  Created by Mehdi Benrefad on 23/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ContainerPage: UIPageViewController , UIPageViewControllerDelegate , UIPageViewControllerDataSource {
    
    var containers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Methode 1: On utilise 3 pages */
        /*
        //on instatier les pages du storyboard
        let page1 = storyboard?.instantiateViewController(identifier: "page1")
        let page2 = storyboard?.instantiateViewController(identifier: "page2")
        let page3 = storyboard?.instantiateViewController(identifier: "page3")
        
        //on les rajoute a la liste
        containers.append(page1!)
        containers.append(page2!)
        containers.append(page3!)
        
        */
        
        
        /*Methode 2 : On utilise 1 seule page et on change son contenu */
        //on instancie notre page controller 3 fois
        let page1 = storyboard?.instantiateViewController(identifier: "page1") as! ViewController
            page1.PageTitle = "First Page"
            page1.PageDescription = "Description1"
        let page2 = storyboard?.instantiateViewController(identifier: "page1") as! ViewController
            page2.PageTitle = "Second Page"
            page2.PageDescription = "Description2"
        let page3 = storyboard?.instantiateViewController(identifier: "page1")as! ViewController
            page3.PageTitle = "Third Page"
            page3.PageDescription = "Description3"
        
        
        //on les rajoute a la liste
        containers.append(page1)
        containers.append(page2)
        containers.append(page3)
        //definir cette classe comme delegate et datasource du pageViewController
        delegate = self
        dataSource = self
        
        //on affiche la premiere page [par defaut c est la premiere page qui doit etre affichee]
        if let firstpage = containers.first {
            setViewControllers([firstpage], direction: .forward, animated: true, completion: nil)
        }
        
        //on ajoute le controle de pages personnalise [voir la fonction bien commentee en bas de la page]
        addPageControl()
    }
    
    
    //lorcequ on defile a droite
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = containers.firstIndex(of: viewController) else{
            return nil
        }
        
        let previous = index-1
        
        guard previous >= 0 else{
            return containers.last
        }
        
        return containers[previous]
    }
    
    
    
    //lorcequ on defile a gauche
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = containers.firstIndex(of: viewController) else{
            return nil
        }
        
        let next = index+1
        
        guard next < containers.count else{
            return containers.first
        }
        return containers[next]
    }
    
    /*
    //afficher un Controle de pages [un indice sur les pages en bas de l'ecran] (a l'aide de 2 fonctions)
    //cette premiere fonction va nous permettre de definir le nombre de pages a paginer
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return containers.count
    }
    //cette seconde fonction va nous permettre d'indiquer l;indice de la page qui sera affichee en premier
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    */
    
    //on peut meme personnaliset le controle de pages [indices de pages en bas de l'ecran]
    var pageControl = UIPageControl()
    func addPageControl(){
        //definir le positionnement et les dimentions du pagrControl
        pageControl = UIPageControl(frame: CGRect(x:0 , y: UIScreen.main.bounds.maxY-70, width: UIScreen.main.bounds.width, height: 70))
        //definir le nombre de page
        pageControl.numberOfPages = containers.count
        //definir la page courande au lancement des pages
        pageControl.currentPage=0
        //la couleur du pageControl
        pageControl.tintColor = UIColor.white
        //la couleur des points non selectionnes
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        //la couleur du point selectionne
        pageControl.currentPageIndicatorTintColor = UIColor.white
        //ajouter la controle de page a la vue principale
        view.addSubview(pageControl)
    }
    
    //lorcequ'on change de page cette fonction est appelee
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        //on recuperere le viewController de la page courante
        let theNewPage = pageViewController.viewControllers![0]
        //puis on change la page courante dans le pageControl
        self.pageControl.currentPage = containers.firstIndex(of: theNewPage)!
    }
    
}
