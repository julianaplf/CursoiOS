//
//  Resultado2.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 27/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

class Resultado2: UIViewController {

    @IBOutlet weak var showResultado: UILabel!
    @IBOutlet weak var PlayAgainButton: UIButton!
    @IBOutlet weak var LeaveButton: UIButton!
    @IBOutlet weak var ResultadoImagem: UIImageView!
    
    
    var resultado : String!
    var MostraImage: Bool!
    var TextoBotao: String!
    var resposta: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showResultado.text = resultado
        self.ResultadoImagem.image = UIImage(named: resposta)
        PlayAgainButton.layer.cornerRadius = 7
        LeaveButton.layer.cornerRadius = 7
        
        if(MostraImage == true) {
            ResultadoImagem.alpha = 100
        } else {
            ResultadoImagem.alpha = 0
        }
        
        PlayAgainButton.setTitle(TextoBotao, for: UIControlState.normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
