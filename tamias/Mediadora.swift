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
    
    var floresDoBau:[classeDasRecompensas]
    var florPraPlantar:[String]
    var floresPlantadas:[classeDasRecompensas]
    var plantas:[[Bool]]
    var sol:Int
    var agua:Int
    
    private init() {
        self.plantas = [[false,false,false]
                        ,[false,false,false]
                        ,[false,false,false]]
        self.floresDoBau = []
        self.florPraPlantar = []
        self.floresPlantadas = []
        self.sol = 5
        self.agua = 0
    }
    
}

