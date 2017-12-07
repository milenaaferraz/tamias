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
    var vidas = 3
    var timer: Timer?
    
    // barra superior
    @IBOutlet weak var barraSuperiorView: UIView!
    @IBOutlet weak var fecharOutlet: UIButton!
    @IBAction func fecharBotao(_ sender: Any) {
    }
    
    // vidas
    @IBOutlet weak var vida1: UIImageView!
    @IBOutlet weak var vida2: UIImageView!
    @IBOutlet weak var vida3: UIImageView!
    
    // progresso
    @IBOutlet weak var progressBar: UIProgressView!
    
    // questao
    @IBOutlet weak var enunciadoLabel: UILabel!
    @IBOutlet weak var enunciadoImagem: UIImageView!
    
    // alternativas
    @IBOutlet weak var alternativasView: UIView!
    @IBOutlet weak var alternativa1Outlet: UIButton!
    @IBAction func alternativa1Botao(_ sender: Any) {
        
        clicaNaAlternativa(alternativa1Outlet)
        
    }
    
    @IBOutlet weak var alternativa2Outlet: UIButton!
    @IBAction func alternativa2Botao(_ sender: Any) {
        
        clicaNaAlternativa(alternativa2Outlet)
        
    }
    @IBOutlet weak var alternativa3Outlet: UIButton!
    @IBAction func alternativa3Botao(_ sender: Any) {
        
        clicaNaAlternativa(alternativa3Outlet)
        
    }
    @IBOutlet weak var alternativa4Outlet: UIButton!
    @IBAction func alternativa4Botao(_ sender: Any) {
        
        clicaNaAlternativa(alternativa4Outlet)
        
    }
    
    // feedback
    @IBOutlet weak var feedbackLabel: UILabel!
    
    // ver recompensa
    @IBOutlet weak var verRecompensaOutlet: UIButton!
    @IBAction func verRecompensaBotao(_ sender: Any) {
    }
    
    // proxima
    @IBOutlet weak var proximaOutlet: UIButton!
    @IBAction func proximaBotao(_ sender: Any) {
        
        //        rodadaEx1 = rodadaEx1 + 1
        progressBar.isHidden = false
        
        if rodadaEx1 < 5 && vidas > 0 {
            
            proximaOutlet.isHidden = true
            feedbackLabel.isHidden = true
            
            enunciadoLabel.text = conjuntoPerguntas[rodadaEx1].enunciado
            enunciadoImagem.image = self.conjuntoPerguntas[rodadaEx1].imagemGuia.withRenderingMode(.alwaysOriginal)
            
            alternativasView.isHidden = false
            
        }
        
    }
    
    //// funcoes
    // funcao errou
    func errou() {
        
        self.vidas = self.vidas - 1
        if self.vida3.image == #imageLiteral(resourceName: "coracaoCheio") {
            self.vida3.image = #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
        } else if self.vida2.image == #imageLiteral(resourceName: "coracaoCheio"){
            self.vida2.image = #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
        } else {
            self.vida1.image = #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
        }
        
    }
    
    // funcao de clicar nas alternativas
    func clicaNaAlternativa (_ alternativa:UIButton) {
        
        if alternativa.titleLabel?.text == conjuntoPerguntas[rodadaEx1].respostaCerta {
            feedbackLabel.text = "Você acertou!"
        }
        else if alternativa.titleLabel?.text != conjuntoPerguntas[rodadaEx1].respostaCerta {
            
            feedbackLabel.text = "Ah, você errou..."
            errou()
        }
        
        
        if vidas <= 0 {
            feedbackLabel.text = "Você não acertou dessa vez e suas vidas acabaram"
            verRecompensaOutlet.setTitle("TERMINAR", for: .normal)
            verRecompensaOutlet.backgroundColor = UIColor(red: (122/255), green: (112/255), blue: (106/255), alpha: 1)
            verRecompensaOutlet.isHidden = false
        }
        
        rodadaEx1 += 1
        
        if (rodadaEx1 < 5) {
            
            alternativa1Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa1, for: .normal)
            alternativa2Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa2, for: .normal)
            alternativa3Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa3, for: .normal)
            alternativa4Outlet.setTitle(conjuntoPerguntas[rodadaEx1].alternativa4, for: .normal)
            
            //            if (rodadaEx1 < 4) {
            
            proximaOutlet.isHidden = false
            
        } else {
            
            verRecompensaOutlet.isHidden = false
        }
        
        progressBar.isHidden = true
        alternativasView.isHidden = true
        feedbackLabel.isHidden = false
        
    }
    
    // timer da progress bar
    func progressTimer () {
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            
            self.progressBar.progress = self.progressBar.progress - (1/90)
            
            if self.progressBar.progress <= 0 {
                
                self.alternativasView.isHidden = true
                self.proximaOutlet.isHidden = false
                self.feedbackLabel.text = "O tempo acabou..."
                self.feedbackLabel.isHidden = false
                
                // vidas acabam
                self.vidas = 0
                self.verRecompensaOutlet.setTitle("TERMINAR", for: .normal)
                self.verRecompensaOutlet.backgroundColor = UIColor(red: (122/255), green: (112/255), blue: (106/255), alpha: 1)
                self.verRecompensaOutlet.isHidden = false
                self.vida3.image = #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
                self.vida2.image = #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
                self.vida1.image = #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
                
                self.timer?.invalidate()
                
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recompensas = segue.destination as? RecompensaViewController {
            
            //// texto
            // perdeu
            if vidas <= 0 {
               recompensas.ganhou = false
                
            // ganhou
            } else {
                recompensas.ganhou = true
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 2)
        progressBar.progress = 1
        progressTimer()
        
        proximaOutlet.isHidden = true
        verRecompensaOutlet.isHidden = true
        feedbackLabel.isHidden = true
        
        let perg1 = Exercicio1Pergunta(enunciado: "Lembrando que, para cada pedaço de terra,você precisa de 3 gotas de água, quantas gotas você precisa para essa quantidade de terra?", // 3 terras
            respostaCerta: "9 GOTAS",
            alternativa1: "9 GOTAS",
            alternativa2: "6 GOTAS",
            alternativa3: "3 GOTAS",
            alternativa4: "15 GOTAS",
            imagemGuia:#imageLiteral(resourceName: "exercicio1soma3"))
        let perg2 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 5 terras
            respostaCerta: "15 GOTAS",
            alternativa1: "10 GOTAS",
            alternativa2: "15 GOTAS",
            alternativa3: "20 GOTAS",
            alternativa4: "25 GOTAS",
            imagemGuia: #imageLiteral(resourceName: "exercicio1soma5"))
        let perg3 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 7 terras
            respostaCerta: "21 GOTAS",
            alternativa1: "28 GOTAS",
            alternativa2: "21 GOTAS",
            alternativa3: "14 GOTAS",
            alternativa4: "17 GOTAS",
            imagemGuia: #imageLiteral(resourceName: "exercicio1soma6"))
        
        let perg4 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 8 terras
            respostaCerta: "24 GOTAS",
            alternativa1: "20 GOTAS",
            alternativa2: "8 GOTAS",
            alternativa3: "24 GOTAS",
            alternativa4: "16 GOTAS",
            imagemGuia: #imageLiteral(resourceName: "exercicio1soma8"))
        
        let perg5 = Exercicio1Pergunta(enunciado: "Quantas gotas de água você precisa para essa quantidade de terra?", // 10 terras
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
