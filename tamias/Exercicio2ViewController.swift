

//  Exercicio2ViewController.swift

//  tamias

//

//  Created by Milena Almeida Ferraz on 29/11/17.

//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.

//


import UIKit

class Exercicio2ViewController:UIViewController {
    
    @IBOutlet weak var vida1: UIImageView!
    @IBOutlet weak var vida3: UIImageView!
    @IBOutlet weak var vida2: UIImageView!
    @IBOutlet weak var flor4: UIButton!
    @IBOutlet weak var flor3: UIButton!
    @IBOutlet weak var flor2: UIButton!
    @IBOutlet weak var flor1: UIButton!
    @IBOutlet weak var numeroPontos: UILabel!
    @IBOutlet weak var suaPontuacao: UILabel!
    @IBOutlet weak var instrucaoNoJogo: UILabel!
    @IBAction func botaox(_ sender: Any) {
    }
    
    var pontuacao = 0
    var timer: Timer? = nil
    var indice: Int = 0
    var vidas = 3

    var clickUsuario: [Int] = []
    var sequenciaQueAparece: [Int] = []
    let listaDeSequencias: [[Int]] = [[1,2,3,4], [1,2,4,3], [1,3,2,4],[1,3,4,2], [1,4,3,2], [1,4,2,3], [2,1,3,4], [2,1,4,3], [2,3,1,4],[2,3,4,1], [2,4,1,3], [2,4,3,1], [3,1,2,4], [3,1,4,2], [3,2,1,4],[3,2,4,1], [3,4,1,2], [3,4,2,1], [4,1,2,3], [4,1,3,2], [4,2,1,3], [4,2,3,1], [4,3,1,2], [4,3,2,1]]
    
    //CARREGA A TELA
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        jogoAparece()
    }
    
    //JOGO COMEÇA
    func jogoAparece() {
        
        //CARREGA AS FLORES
        flor1.isHidden = true
        flor2.isHidden = true
        flor3.isHidden = true
        flor4.isHidden = true
        
        let florCerta1 = #imageLiteral(resourceName: "FlorRosa ComVaso").withRenderingMode(.alwaysOriginal)
        flor1.setImage(florCerta1, for: .normal)

        let florCerta2 = #imageLiteral(resourceName: "Girassol ComVaso").withRenderingMode(.alwaysOriginal)
        flor2.setImage(florCerta2, for: .normal)
        
        let florCerta3 = #imageLiteral(resourceName: "Cacto1 ComVaso").withRenderingMode(.alwaysOriginal)
        flor3.setImage(florCerta3, for: .normal)
        
        let florCerta4 = #imageLiteral(resourceName: "FlorRoxa ComVaso").withRenderingMode(.alwaysOriginal)
        flor4.setImage(florCerta4, for: .normal)
        
        //DETERMINA A SEQUENCIA ALEATÓRIA DAS FLORES
        var numero = arc4random_uniform(UInt32(listaDeSequencias.count))
        print(numero)
        sequenciaQueAparece = listaDeSequencias[Int(numero)]
        
        //TEMPO QUE AS FLORES APARECEM
        timer = Timer.scheduledTimer(withTimeInterval: 0.4, repeats:
        true) { (timer) in
            
            if self.indice == 4{
                timer.invalidate()
                self.indice = 0
            
            }else{
                let numero = self.sequenciaQueAparece[self.indice]
                if numero == 1{
                    self.flor1.isHidden = false
                }else if numero == 2{
                    self.flor2.isHidden = false
                }else if numero == 3{
                    self.flor3.isHidden = false
                }else if numero == 4{
                    self.flor4.isHidden = false
                }
                self.indice = self.indice + 1
            }
        }
    }
    
    //SALVA O CLICK DO USUÁRIO NO ARRAY
    @IBAction func click(_ sender: Any) {
    
        if sender as! UIButton == flor1{
            clickUsuario.append(1)
            flor1.isHidden = true
            print(1)
            
        } else if sender as! UIButton == flor2{
            clickUsuario.append(2)
            flor2.isHidden = true
            print(2)
            
        } else if sender as! UIButton == flor3 {
            clickUsuario.append(3)
            flor3.isHidden = true
            print(3)
            
        } else if sender as! UIButton == flor4 {
            clickUsuario.append(4)
            flor4.isHidden = true
            print (4)
        }
        
        if flor1.isHidden && flor2.isHidden && flor3.isHidden && flor4.isHidden {
            gameOverRodada()
            
        }
    }
    
    //ACABA A RODADA
    func gameOverRodada() {
        // acertou
        if clickUsuario == sequenciaQueAparece {   // array.cont < 4
            pontuacao = pontuacao + 10
            numeroPontos.text = "\(pontuacao)"
            print(clickUsuario)
            print(sequenciaQueAparece)
            
        } else {    // errou
            self.vidas = self.vidas - 1
            if self.vida3.image == #imageLiteral(resourceName: "coracaoCheio") {
                self.vida3.image =  #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
            } else if self.vida2.image == #imageLiteral(resourceName: "coracaoCheio") {
                self.vida2.image = #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
            } else {
                self.vida1.image =  #imageLiteral(resourceName: "coracaoVazio").withRenderingMode(.alwaysOriginal)
            }
        }
        
        clickUsuario.removeAll()
        sequenciaQueAparece.removeAll()
        
        if vidas > 0 {
            jogoAparece()
            // adicionar modificaçōes na tela
        }
    }

    override func viewWillAppear(_ animated: Bool) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

