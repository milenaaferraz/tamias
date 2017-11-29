//
//  MetasViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class MetasViewController: UIViewController {

    // calendario
    @IBOutlet weak var dia1View: UIView!
    @IBOutlet weak var dia1Ok: UIImageView!
    
    @IBOutlet weak var dia2View: UIView!
    @IBOutlet weak var dia2Ok: UIImageView!
    
    @IBOutlet weak var dia3View: UIView!
    @IBOutlet weak var dia3Texto: UILabel!
    
    @IBOutlet weak var dia4View: UIView!
    @IBOutlet weak var dia4Texto: UILabel!
    
    @IBOutlet weak var dia5View: UIView!
    @IBOutlet weak var dia5Estrela: UIImageView!
    
    // titulos
    // para hoje
    @IBOutlet weak var paraHojeTexto: UILabel!
    // Recompensas
    @IBOutlet weak var recompensaTexto: UILabel!
    
    // Botoes barra inferior
    @IBOutlet weak var metasOutlet: UIButton!
    @IBOutlet weak var jardimOutlet: UIButton!
    @IBAction func jardimBotao(_ sender: Any) {
    }
    @IBOutlet weak var bauOutlet: UIButton!
    @IBOutlet weak var bauBotao: UIButton!
    
    
    // Ir para exercícios
    // 1
    @IBOutlet weak var irParaExercImagem1: UIImageView!
    @IBOutlet weak var irParaExercOutlet1: UIButton!
    @IBAction func irParaExercOutlet1(_ sender: Any) {
    }
    // 2
    @IBOutlet weak var irParaExercImagem2: UIImageView!
    @IBOutlet weak var irParaExercOutlet2: UIButton!
    @IBAction func irParaExercBotao2(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
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