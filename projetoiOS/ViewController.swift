//
//  ViewController.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 24/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLogo: UIImageView!
    @IBOutlet weak var mainBg: UIView!
    @IBOutlet weak var mainBt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         mainBt.layer.cornerRadius = 7
        
        //colocando os objetos posicionados na home -- estudando apenas.
        
       /* mainLogo.frame = CGRect(x: view.bounds.width/2 - mainLogo.frame.width/2, y: view.bounds.height/2 - mainLogo.frame.height/2, width: mainLogo.frame.width, height: mainLogo.frame.height)
        mainBg.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        mainBt.frame = CGRect(x: view.bounds.width/2 - mainBt.frame.width/2, y: view.bounds.height - 100, width: mainBt.frame.width, height: mainBt.frame.height) */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltandoPraHome (segue : UIStoryboardSegue) {
        
    }

}

