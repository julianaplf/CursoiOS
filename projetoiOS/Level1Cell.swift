//
//  Level1Cell.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 25/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

// Para as celulas da primeira table view

class Level1Cell: UITableViewCell {

    @IBOutlet weak var LevelNameLabel: UILabel!
    
    // funcao para setar o nome dos niveis
    
    func setLevelCell(nivel: Nivel){
        LevelNameLabel.text = nivel.title
    }
    
}
