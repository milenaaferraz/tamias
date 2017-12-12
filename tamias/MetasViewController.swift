//
//  MetasViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class MetasViewController: UIViewController {

    //var
    var Escolha = 0
    var mediadora = Mediadora.shared
    
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
    
    @IBOutlet weak var solSemEnergia: UIImageView!
    @IBOutlet weak var semEnergia: UILabel!
    
    @IBOutlet weak var ops: UILabel!
    
    // Botoes barra inferior
    @IBOutlet weak var metasOutlet: UIButton!
    @IBOutlet weak var jardimOutlet: UIButton!
    @IBAction func jardimBotao(_ sender: Any) {
    }
    @IBOutlet weak var bauOutlet: UIButton!
    @IBOutlet weak var bauBotao: UIButton!
    
    
    // Ir para exercícios
    // 1
    @IBOutlet weak var irParaExercOutlet1: UIButton!
    // 2
    @IBOutlet weak var irParaExercOutlet2: UIButton!
    //Clique nos exercicios para instrucoes
    
    @IBAction func irParaInstrucao(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let instrucoes = segue.destination as? InstrucoesViewController {
        
            if sender as! UIButton == irParaExercOutlet1{
                instrucoes.selecionado = "1"
                
            } else if sender as! UIButton == irParaExercOutlet2 {
                instrucoes.selecionado = "2"
            }
            }
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        let iconeExerc1 = UIImage(named: "exercicio1Icone")?.withRenderingMode(.alwaysOriginal)
        irParaExercOutlet1.setImage(iconeExerc1, for: .normal)
        let iconeExerc2 = UIImage(named: "exercicio2Icones")?.withRenderingMode(.alwaysOriginal)
        irParaExercOutlet2.setImage(iconeExerc2, for: .normal)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(false)
        
        if mediadora.sol == 0 {
            semEnergia.isHidden = false
            ops.isHidden = false
            solSemEnergia.isHidden = false
        
            irParaExercOutlet1.isHidden = true
            irParaExercOutlet2.isHidden = true
            
        } else {
            semEnergia.isHidden = true
            ops.isHidden = true
            solSemEnergia.isHidden = true
            
            irParaExercOutlet1.isHidden = false
            irParaExercOutlet2.isHidden = false
        }
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
