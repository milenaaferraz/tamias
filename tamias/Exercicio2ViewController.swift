//
//  Exercicio2ViewController.swift
//  tamias
//
//  Created by Milena Almeida Ferraz on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class Exercicio2ViewController:UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
