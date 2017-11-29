//
//  InstrucoesViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class InstrucoesViewController: UIViewController {

    // Título
    @IBOutlet weak var tituloView: UIView!
    @IBOutlet weak var tituloTexto: UILabel!
    @IBOutlet weak var tituloVoltar: UILabel!
    
    // Capa
    @IBOutlet weak var imagemCapa: UIImageView!
    
    // Instrucoes
    @IBOutlet weak var instrucoesTitulo: UILabel!
    @IBOutlet weak var instrucoesDescricao: UILabel!
    
    // Comecar desafio
    @IBOutlet weak var comecarOutlet: UIButton!
    @IBAction func comecarBotao(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
