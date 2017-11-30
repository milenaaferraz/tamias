//
//  Exercicio1ViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class Exercicio1ViewController: UIViewController {

    var rodadaEx1 = 0
    var conjuntoPerguntas:[Exercicio1Pergunta] = []
    
    // barra superior
    @IBOutlet weak var vidasView: UIView!
    @IBOutlet weak var vidasTexto: UILabel!
    @IBOutlet weak var fecharOutlet: UIButton!
    @IBAction func fecharBotao(_ sender: Any) {
    }
    @IBOutlet weak var progressBar: UIProgressView!
    
    // questao
    @IBOutlet weak var enunciadoLabel: UILabel!
    @IBOutlet weak var enunciadoImagem: UIImageView!
    
    // alternativas
    @IBOutlet weak var alternativasView: UIView!
    @IBOutlet weak var alternativa1Outlet: UIButton!
    @IBAction func alternativa1Botao(_ sender: Any) {
        if (rodadaEx1 < 2) {
        proximaOutlet.isHidden = false
        } else {
        verRecompensaOutlet.isHidden = false
        }
        alternativasView.isHidden = true
    }
    @IBOutlet weak var alternativa2Outlet: UIButton!
    @IBAction func alternativa2Botao(_ sender: Any) {
        proximaOutlet.isHidden = false
        alternativasView.isHidden = true
    }
    @IBOutlet weak var alternativa3Outlet: UIButton!
    @IBAction func alternativa3Botao(_ sender: Any) {
        proximaOutlet.isHidden = false
        alternativasView.isHidden = true
    }
    @IBOutlet weak var alternativa4Outlet: UIButton!
    @IBAction func alternativa4Botao(_ sender: Any) {
        proximaOutlet.isHidden = false
        alternativasView.isHidden = true
        
    }
    
    @IBOutlet weak var verRecompensaOutlet: UIButton!
    @IBAction func verRecompensaBotao(_ sender: Any) {
    }
    
    @IBOutlet weak var proximaOutlet: UIButton!
    @IBAction func proximaBotao(_ sender: Any) {
        if rodadaEx1 < 2 {
            proximaOutlet.isHidden = true
            alternativasView.isHidden = false
            rodadaEx1 = rodadaEx1 + 1
            enunciadoLabel.text = conjuntoPerguntas[rodadaEx1].enunciado
            enunciadoImagem.image = conjuntoPerguntas[rodadaEx1].imagemGuia
            alternativa1Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa1, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        proximaOutlet.isHidden = true
        verRecompensaOutlet.isHidden = true
        var perg1 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?",
                                       respostaCerta: "9 gotas",
                                       alternativa1: "9 gotas",
                                       alternativa2: "6 gotas",
                                       alternativa3: "3 gotas",
                                       alternativa4: "15 gotas",
                                       imagemGuia:#imageLiteral(resourceName: "exercicio1soma3"))
        var perg2 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?",
                                       respostaCerta: "15 gotas",
                                       alternativa1: "10 gotas",
                                       alternativa2: "15 gotas",
                                       alternativa3: "20 gotas",
                                       alternativa4: "30 gotas",
                                       imagemGuia: #imageLiteral(resourceName: "exercicio1soma5"))
        
        conjuntoPerguntas = [perg1, perg2]
        
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
