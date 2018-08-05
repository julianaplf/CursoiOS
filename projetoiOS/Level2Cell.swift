//
//  Level2Cell.swift
//  projetoiOS
//
//  Created by Juliana Pereira Lopes Fonseca on 25/05/18.
//  Copyright © 2018 Juliana Pereira Lopes Fonseca. All rights reserved.
//

import UIKit

// Para as celulas da segunda table view

class Level2Cell: UITableViewCell {

    @IBOutlet weak var LevelHardNameLabel: UILabel!
    
    // funcao para setar o nome dos niveis
    
    func setLevelHardCell(nivel: Nivel){
        LevelHardNameLabel.text = nivel.title
    }
}
