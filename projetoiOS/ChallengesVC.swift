//
//  ChallengesVC.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 26/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

class ChallengesVC: UIViewController {

    @IBOutlet weak var ChallengeName: UILabel!
    @IBOutlet weak var ChallengeImg1: UIImageView!
    @IBOutlet weak var ChallengeImg2: UIImageView!
    @IBOutlet weak var ChallengeAnswer: UITextField!
    @IBOutlet weak var ChallengeTip: UILabel!
    @IBOutlet weak var ChallengeButton: UIButton!
    
    var image1Name: String!
    var image2Name: String!
    var levelName: String!
    var Resposta: String!
    var Dica: String!
    var Resultado: String!
    var Mostra: Bool!
    
    
    @IBAction func CheckAnswer(_ sender: Any) {
        if !(ChallengeAnswer.text!.isEmpty){
            self.performSegue(withIdentifier: "resultado1", sender: self)
            
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

         self.ChallengeImg1.image = UIImage(named: image1Name)
         self.ChallengeImg2.image = UIImage(named: image2Name)
         self.ChallengeName.text = levelName
         self.ChallengeTip.text = Dica
         ChallengeButton.layer.cornerRadius = 7
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destino = segue.destination as? Resultado else {
            print("Deu Ruim")
            return
        }
        destino.resposta = ChallengeAnswer.text?.lowercased().folding(options: .diacriticInsensitive, locale: .current)
        
        if ChallengeAnswer.text?.lowercased() == Resposta{
            Resultado = "Acertou!!!"
            destino.resultado = Resultado
            Mostra = true
            destino.TextoBotao = "Continuar jogando"
           
        } else {
            Resultado = "Errou :("
            destino.resultado = Resultado
            Mostra = false
            destino.TextoBotao = "Tentar novamente"
        }
       
         destino.MostraImage = Mostra
    }
    
}
