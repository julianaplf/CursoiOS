//
//  level1Class.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 25/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

class level1Class: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var level1TV: UITableView!
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
        
        let cell1id = "Level1Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cell1id) as! Level1Cell
        cell.setLevelCell(nivel: levelName)
        return cell
    }
    
    // funcao do tableview delegate para saber qual cell foi clicada
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "challenge", sender: indexPath)
        //print("You selected cell #\(indexPath.row)!")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // criando array e carregando o datasource e o delegate. Sem isso as celulas nao aparecem no build.
        
        levels = createLevelList()
        level1TV.dataSource = self
        level1TV.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func voltandoProsNiveis (segue : UIStoryboardSegue) {
        
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destino = segue.destination as? ChallengesVC else {
            print("Deu ruim")
            return
        }
        let row = (sender as! IndexPath).row
        if row == 0 {
            
            imagem1 = "aviao"
            imagem2 = "porto"
            nomedonivel = "Nivel 1"
            respostadonivel = "aeroporto"
            
        } else if row == 1 {
            
            imagem1 = "casal"
            imagem2 = "aliancas"
            nomedonivel = "Nivel 2"
            respostadonivel = "casamento"
        
        } else if row == 2 {
            
            imagem1 = "cachorro"
            imagem2 = "manchas"
            nomedonivel = "Nivel 3"
            respostadonivel = "dálmata"
            
        } else if row == 3 {
            
            imagem1 = "lagarto"
            imagem2 = "lapis"
            nomedonivel = "Nivel 4"
            respostadonivel = "camaleão"
            
        } else if row == 4 {
            
            imagem1 = "arroz"
            imagem2 = "salmao"
            nomedonivel = "Nivel 5"
            respostadonivel = "sushi"
        }
        
        dicadonivel = "Dica: \(respostadonivel.count) letras"
        destino.image1Name = imagem1
        destino.image2Name = imagem2
        destino.levelName = nomedonivel
        destino.Resposta = respostadonivel
        destino.Dica = dicadonivel
        
    } // final do prepare for segue

}
