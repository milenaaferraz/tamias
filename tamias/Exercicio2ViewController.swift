//
//  Exercicio2ViewController.swift
//  tamias
//
//  Created by Milena Almeida Ferraz on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class Exercicio2ViewController:UIViewController {

    var timer: Timer? = nil
    var indice: Int = 0
    @IBOutlet weak var flor4: UIButton!
    @IBOutlet weak var flor3: UIButton!
    @IBOutlet weak var flor2: UIButton!
    @IBOutlet weak var flor1: UIButton!
    @IBOutlet weak var numeroPontos: UILabel!
    @IBOutlet weak var suaPontuacao: UILabel!
    @IBOutlet weak var instrucaoNoJogo: UILabel!
    @IBAction func botaox(_ sender: Any) {
    }
    var clickUsuario: [Int] = []
    var sequenciaQueAparece: [Int] = []
    let listaDeSequencias: [[Int]] = [[1,2,3,4], [1,2,4,3], [1,3,2,4], [1,3,4,2], [1,4,3,2], [1,4,2,3], [2,1,3,4], [2,1,4,3], [2,3,1,4], [2,3,4,1], [2,4,1,3], [2,4,3,1], [3,1,2,4], [3,1,4,2], [3,2,1,4], [3,2,4,1], [3,4,1,2], [3,4,2,1], [4,1,2,3], [4,1,3,2], [4,2,1,3], [4,2,3,1], [4,3,1,2], [4,3,2,1]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        flor1.isHidden = true
        flor2.isHidden = true
        flor3.isHidden = true
        flor4.isHidden = true
        
        //DETERMINA A SEQUENCIA ALEATÓRIA DAS FLORES
        let numero = arc4random_uniform(UInt32(listaDeSequencias.count))
        print(numero)
        sequenciaQueAparece = listaDeSequencias[Int(numero)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
          timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            if self.indice == 4{
                timer.invalidate()
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
    
    @IBAction func click(_ sender: Any) {
        if sender as! UIButton == flor1{
            clickUsuario.append(1)
            print(1)
        } else if sender as! UIButton == flor2{
            clickUsuario.append(2)
            print(2)
        } else if sender as! UIButton == flor3 {
            clickUsuario.append(3)
            print(3)
        } else if sender as! UIButton == flor4 {
            clickUsuario.append(4)
            print (4)
        }
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
