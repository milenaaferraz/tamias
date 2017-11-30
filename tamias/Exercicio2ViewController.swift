//
//  Exercicio2ViewController.swift
//  tamias
//
//  Created by Milena Almeida Ferraz on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class Exercicio2ViewController:
    
    UIViewController {
    @IBOutlet weak var imagem4: UIImageView!
    @IBOutlet weak var imagem3: UIImageView!
    @IBOutlet weak var imagem1: UIImageView!
    @IBOutlet weak var imagem2: UIImageView!
    @IBOutlet weak var numeroPontos: UILabel!
    @IBOutlet weak var suaPontuacao: UILabel!
    @IBOutlet weak var instrucaoNoJogo: UILabel!
    @IBAction func botaox(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagem1.isHidden = true
        imagem2.isHidden = true
        imagem3.isHidden = true
        imagem4.isHidden = true
        
        
       
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
