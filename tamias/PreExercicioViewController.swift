//
//  PreExercicioViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class PreExercicioViewController: UIViewController {
    
    var energia1 = 5
    
    @IBOutlet weak var regrasLabel: UILabel!
    @IBOutlet weak var proporcaoLabel: UILabel!
    
    @IBOutlet weak var proporcaoImagem: UIImageView!
    
    @IBOutlet weak var entendiOutlet: UIButton!
    @IBAction func entendiBotao(_ sender: Any) {
        
        energia1 = energia1 - 1
        
    }
    
    @IBOutlet weak var okOutlet: UIButton!
    @IBAction func okBotao(_ sender: Any) {
        
        entendiOutlet.isHidden = false
        proporcaoImagem.isHidden = false
        proporcaoLabel.isHidden = false
       
        regrasLabel.isHidden = true
        okOutlet.isHidden = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController {
           
        }
    }
    override func viewDidLoad() {
        
        entendiOutlet.isHidden = true
        proporcaoLabel.isHidden = true
        proporcaoImagem.isHidden = true
        
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
