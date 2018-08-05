//
//  level2Class.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 25/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

class level2Class: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var Level2TV: UITableView!
    
    var imagem1 : String!
    var imagem2 : String!
    var nomedonivel: String!
    var respostadonivel: String!
    var dicadonivel: String!
    
    //funcao para criar array de objetos do tipo nivel para alimentar a table view
    
    var levels : [Nivel] = []
    
    func createLevelList() -> [Nivel]{
        var niveis: [Nivel] = []
        
        let level1 = Nivel(title: "Nivel 1")
        let level2 = Nivel(title: "Nivel 2")
        let level3 = Nivel(title: "Nivel 3")
        let level4 = Nivel(title: "Nivel 4")
        let level5 = Nivel(title: "Nivel 5")
        
        niveis.append(level1)
        niveis.append(level2)
        niveis.append(level3)
        niveis.append(level4)
        niveis.append(level5)
        
        return niveis
        
    }
    
    //funcao necessaria ao datasource para saber a qtd de itens
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return levels.count
    }
    
    // funcao necessaria ao datasource para retornar as celulas
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let levelName = levels[indexPath.row]
        
        let cell1id = "Level2Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cell1id) as! Level2Cell
        cell.setLevelHardCell(nivel: levelName)
        return cell
    }
    
    // funcao do tableview delegate para saber qual cell foi clicada
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "challenge2", sender: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        levels = createLevelList()
        Level2TV.dataSource = self
        Level2TV.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltandoProsNiveis2 (segue : UIStoryboardSegue) {
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destino = segue.destination as? Challenges2VC else {
            print("Deu ruim")
            return
        }
        let row = (sender as! IndexPath).row
        if row == 0 {
            
            imagem1 = "cavalo"
            imagem2 = "sapato"
            nomedonivel = "Nivel 1"
            respostadonivel = "ferradura"
            
        } else if row == 1 {
            
            imagem1 = "mulher"
            imagem2 = "peixe"
            nomedonivel = "Nivel 2"
            respostadonivel = "sereia"
            
        } else if row == 2 {
            
            imagem1 = "explosao"
            imagem2 = "milho"
            nomedonivel = "Nivel 3"
            respostadonivel = "pipoca"
            
        } else if row == 3 {
            
            imagem1 = "trigo"
            imagem2 = "moinho"
            nomedonivel = "Nivel 4"
            respostadonivel = "farinha"
            
        } else if row == 4 {
            
            imagem1 = "martelo"
            imagem2 = "raio"
            nomedonivel = "Nivel 5"
            respostadonivel = "thor"
        }
        
        dicadonivel = "Dica: \(respostadonivel.count) letras"
        destino.image1Name = imagem1
        destino.image2Name = imagem2
        destino.levelName = nomedonivel
        destino.Resposta = respostadonivel
        destino.Dica = dicadonivel
        
    } // final do prepare for segue

}
