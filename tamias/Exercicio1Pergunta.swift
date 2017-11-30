//
//  Exercicio1Pergunta.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class Exercicio1Pergunta {

    var enunciado:String
    var respostaCerta:String
    var alternativa1:String
    var alternativa2:String
    var alternativa3:String
    var alternativa4:String
    var imagemGuia:UIImage!
    
    init(enunciado:String, respostaCerta:String, alternativa1:String,
        alternativa2:String,
        alternativa3:String,
        alternativa4:String,
        imagemGuia:UIImageView) {
        
        self.enunciado = enunciado
        self.respostaCerta = respostaCerta
        self.alternativa1 = alternativa1
        self.alternativa2 = alternativa2
        self.alternativa3 = alternativa3
        self.alternativa4 = alternativa4
        self.imagemGuia = imagemGuia
        
    }
}
