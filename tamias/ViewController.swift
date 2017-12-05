//
//  ViewController.swift
//  tamias
//
//  Created by Milena Almeida Ferraz on 28/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagemDoFundo: UIImageView!
    
    // Jardim
    @IBOutlet weak var viewDoJardim: UIView!
    @IBOutlet weak var imagemDaCerca: UIImageView!
    
    // Terras e plantas (linhas de 0 a 2 / colunas de 0 a 2 - para funcionar em um array)
    // Linha 0
    @IBOutlet weak var terra00: UIImageView!
    @IBOutlet weak var planta00: UIImageView!
    @IBOutlet weak var terra01: UIImageView!
    @IBOutlet weak var planta01: UIImageView!
    @IBOutlet weak var terra02: UIImageView!
    @IBOutlet weak var planta02: UIImageView!
    // Linha 1
    @IBOutlet weak var terra10: UIImageView!
    @IBOutlet weak var planta10: UIImageView!
    @IBOutlet weak var terra11: UIImageView!
    @IBOutlet weak var planta11: UIImageView!
    @IBOutlet weak var terra12: UIImageView!
    @IBOutlet weak var planta12: UIImageView!
    // Linha 2
    @IBOutlet weak var terra20: UIImageView!
    @IBOutlet weak var planta20: UIImageView!
    @IBOutlet weak var terra21: UIImageView!
    @IBOutlet weak var planta21: UIImageView!
    @IBOutlet weak var terra22: UIImageView!
    @IBOutlet weak var planta22: UIImageView!
    

    // Conjunto de terras
    
    // Solzinhos
    @IBOutlet weak var viewDoSol: UIView!
    @IBOutlet weak var textoDoSol: UILabel!
    @IBOutlet weak var imagemDoSol: UIImageView!
    
    // Gotinhas
    @IBOutlet weak var viewDasGotas: UIView!
    @IBOutlet weak var textoDasGotas: UILabel!
    @IBOutlet weak var imagemDaGota: UIImageView!
    
    // Botões de baixo
    // Metas
    @IBOutlet weak var metasOutlet: UIButton!
    @IBAction func metasBotao(_ sender: Any) {
    }
    // Jardim
    @IBOutlet weak var jardimOutlet: UIButton!
    // Baú
    @IBOutlet weak var bauOutlet: UIButton!
    @IBOutlet weak var bauBotao: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


