//
//  RecompensaViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class RecompensaViewController: UIViewController {

    var vidasRestantes:Int = 0
    var titulo:String = ""
    var mensagem:String = ""
    var legenda:String = ""
    var imagem:UIImage = #imageLiteral(resourceName: "Mosca")
        
    @IBOutlet weak var parabensLabel: UILabel!
    
    @IBOutlet weak var ganhouLabel: UILabel!
    
    @IBOutlet weak var cactoImagem: UIImageView!
    
    @IBOutlet weak var legendaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parabensLabel.text = titulo
        ganhouLabel.text = mensagem
        cactoImagem.image = imagem
        legendaLabel.text = legenda
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() { // tu eh um lixo
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
