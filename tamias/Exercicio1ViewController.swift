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
   
    @IBOutlet weak var barraSuperiorView: UIView!
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
        
        if alternativa1Outlet.titleLabel?.text == conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Você acertou! Parabéns 🌵"
        }
        else if alternativa1Outlet.titleLabel?.text != conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Poxa, você errou..."
        }
        
        if (rodadaEx1 < 4) {
        proximaOutlet.isHidden = false
        } else {
        verRecompensaOutlet.isHidden = false
        }
        alternativasView.isHidden = true
        feedbackLabel.isHidden = false
        
        alternativa1Outlet.setTitle("", for: .normal)
        alternativa2Outlet.setTitle("", for: .normal)
        alternativa3Outlet.setTitle("", for: .normal)
        alternativa4Outlet.setTitle("", for: .normal)
    }
    
    @IBOutlet weak var alternativa2Outlet: UIButton!
    @IBAction func alternativa2Botao(_ sender: Any) {
        
        if alternativa2Outlet.titleLabel?.text == conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Você acertou! Parabéns 🌵"
        }
        else if alternativa2Outlet.titleLabel?.text != conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Poxa, você errou..."
        }
        
        if (rodadaEx1 < 4) {
            proximaOutlet.isHidden = false
        } else {
            verRecompensaOutlet.isHidden = false
        }
        alternativasView.isHidden = true
        feedbackLabel.isHidden = false
        
        alternativa1Outlet.setTitle("", for: .normal)
        alternativa2Outlet.setTitle("", for: .normal)
        alternativa3Outlet.setTitle("", for: .normal)
        alternativa4Outlet.setTitle("", for: .normal)

    }
    @IBOutlet weak var alternativa3Outlet: UIButton!
    @IBAction func alternativa3Botao(_ sender: Any) {
        
        if alternativa3Outlet.titleLabel?.text == conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Você acertou! Parabéns 🌵"
        }
        else if alternativa3Outlet.titleLabel?.text != conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Poxa, você errou..."
        }
        
        if (rodadaEx1 < 4) {
            proximaOutlet.isHidden = false
            
        } else {
            verRecompensaOutlet.isHidden = false
        }
        
        alternativasView.isHidden = true
        feedbackLabel.isHidden = false
        
        alternativa1Outlet.setTitle("", for: .normal)
        alternativa2Outlet.setTitle("", for: .normal)
        alternativa3Outlet.setTitle("", for: .normal)
        alternativa4Outlet.setTitle("", for: .normal)
        
    }
    @IBOutlet weak var alternativa4Outlet: UIButton!
    @IBAction func alternativa4Botao(_ sender: Any) {
        
        if alternativa4Outlet.titleLabel?.text == conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Você acertou! Parabéns 🌵"
        }
        else if alternativa4Outlet.titleLabel?.text != conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Poxa, você errou..."
        }
        
        if (rodadaEx1 < 4) {
            proximaOutlet.isHidden = false
        } else {
            verRecompensaOutlet.isHidden = false
        }
        alternativasView.isHidden = true
        feedbackLabel.isHidden = false
        
        alternativa1Outlet.setTitle("", for: .normal)
        alternativa2Outlet.setTitle("", for: .normal)
        alternativa3Outlet.setTitle("", for: .normal)
        alternativa4Outlet.setTitle("", for: .normal)
        
        
    }
    
    @IBOutlet weak var verRecompensaOutlet: UIButton!
    @IBAction func verRecompensaBotao(_ sender: Any) {
    }
    
    @IBOutlet weak var proximaOutlet: UIButton!
    @IBAction func proximaBotao(_ sender: Any) {
        
        rodadaEx1 = rodadaEx1 + 1
        progressBar.progress = progressBar.progress + 0.2

 
        if rodadaEx1 < 5 {
           
            alternativa1Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa1, for: .normal)
            alternativa2Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa2, for: .normal)
            alternativa3Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa3, for: .normal)
            alternativa4Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa4, for: .normal)
            
            proximaOutlet.isHidden = true
            feedbackLabel.isHidden = true
           
            enunciadoLabel.text = conjuntoPerguntas[rodadaEx1].enunciado
            enunciadoImagem.image = self.conjuntoPerguntas[rodadaEx1].imagemGuia.withRenderingMode(.alwaysOriginal)
            
            alternativasView.isHidden = false
        }

    }
    
    @IBOutlet weak var feedbackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        proximaOutlet.isHidden = true
        verRecompensaOutlet.isHidden = true
        feedbackLabel.isHidden = true
        
        var perg1 = Exercicio1Pergunta(enunciado: "Lembrando que, para cada pedaço de terra,você precisa de 3 gotas de água, quantas gotas você precisa para essa quantidade de terra?", // 3 terras
                                       respostaCerta: "9 GOTAS",
                                       alternativa1: "9 GOTAS",
                                       alternativa2: "6 GOTAS",
                                       alternativa3: "3 GOTAS",
                                       alternativa4: "15 GOTAS",
                                       imagemGuia:#imageLiteral(resourceName: "exercicio1soma3"))
        var perg2 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 5 terras
                                       respostaCerta: "15 GOTAS",
                                       alternativa1: "10 GOTAS",
                                       alternativa2: "15 GOTAS",
                                       alternativa3: "20 GOTAS",
                                       alternativa4: "25 GOTAS",
                                       imagemGuia: #imageLiteral(resourceName: "exercicio1soma5"))
        var perg3 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 6 terras
                                       respostaCerta: "18 GOTAS",
                                       alternativa1: "9 GOTAS",
                                       alternativa2: "16 GOTAS",
                                       alternativa3: "18 GOTAS",
                                       alternativa4: "30 GOTAS",
                                       imagemGuia: #imageLiteral(resourceName: "exercicio1soma6"))
       
        var perg4 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 8 terras
                                       respostaCerta: "24 GOTAS",
                                       alternativa1: "20 GOTAS",
                                       alternativa2: "8 GOTAS",
                                       alternativa3: "24 GOTAS",
                                       alternativa4: "16 GOTAS",
                                       imagemGuia: #imageLiteral(resourceName: "exercicio1soma8"))

        var perg5 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 10 terras
                                       respostaCerta: "30 GOTAS",
                                       alternativa1: "50 GOTAS",
                                       alternativa2: "20 GOTAS",
                                       alternativa3: "10 GOTAS",
                                       alternativa4: "30 GOTAS",
                                       imagemGuia: #imageLiteral(resourceName: "exercicio1soma10"))
        
        conjuntoPerguntas = [perg1, perg2, perg3, perg4, perg5]
        
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
