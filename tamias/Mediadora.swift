//
//  Mediadora.swift
//  tamias
//
//  Created by Ana Flávia Nascimento Godoy on 12/7/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import Foundation


class Mediadora {  // agua, sol, plantinhas do jardim
    
    static let shared = Mediadora()
    
    var floresSementes:[classeDasRecompensas]
    var florPraPlantar:[String]
    
    private init() {
        
        self.floresSementes = []
        self.florPraPlantar = []
    }
    
}
