//
//  Resultado.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 27/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

class Resultado: UIViewController {

    @IBOutlet weak var showResultado: UILabel!
    @IBOutlet weak var PlayAgainButton: UIButton!
    @IBOutlet weak var LeaveButton: UIButton!
    @IBOutlet weak var ResultadoImage: UIImageView!
    
    var resultado : String!
    var nomeImage: String!
    var resposta: String!
    var MostraImage: Bool!
    var TextoBotao: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showResultado.text = resultado
        self.ResultadoImage.image = UIImage(named: resposta)
        PlayAgainButton.layer.cornerRadius = 7
        LeaveButton.layer.cornerRadius = 7
        
        if(MostraImage == true) {
            ResultadoImage.alpha = 100
        } else {
            ResultadoImage.alpha = 0
        }
        
        PlayAgainButton.setTitle(TextoBotao, for: UIControlState.normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // Show the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    } */
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
