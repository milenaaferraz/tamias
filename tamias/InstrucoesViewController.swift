//
//  InstrucoesViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class InstrucoesViewController: UIViewController {
    
    let mediadora = Mediadora.shared
    
    let capa = #imageLiteral(resourceName: "exercicio1capa").withRenderingMode(.alwaysOriginal)
    let capa2 = #imageLiteral(resourceName: "ex2capainstrucoes").withRenderingMode(.alwaysOriginal)
    
    var selecionado = ""
    
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
        if selecionado == "1" {
            
           performSegue(withIdentifier: "paraJogo1", sender: nil)
            
            mediadora.sol = mediadora.sol - 1
        
        } else {
            
            performSegue(withIdentifier: "paraJogo2", sender: nil)
            
            mediadora.sol = mediadora.sol - 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        if selecionado == "1" {
            tituloTexto.text = "QUANTAS GOTAS?"
            instrucoesDescricao.text = "Um jardim tem necessidades especiais! Agora vamos escolher as medidas de cada cuidado necessário para suas terrinhas ficarem bem!"
            imagemCapa.image = capa
        }
        
        if selecionado == "2" {
            tituloTexto.text = "QUAL A ORDEM?"
            instrucoesDescricao.text = "Todo dia aparecem flores novas no seu jardim! Clique nas plantas na ordem que elas surgirem. Faça 100 pontos ou mais para ganhar sua recompensa!"
            imagemCapa.image = capa2
            
        }
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
