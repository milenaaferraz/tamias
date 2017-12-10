//
//  RecompensaViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class RecompensaViewController: UIViewController {

    
    let mediadora = Mediadora.shared
    
    @IBAction func jogarNovamente(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irParaInstr1"  {
            let instrucao1 = storyboard?.instantiateViewController(withIdentifier :"MetasViewController") as! UIViewController
        
        }
    }
        
    
    @IBAction func fecharTela(_ sender: Any) {
        performSegue(withIdentifier: "xparadesafios", sender: sender)
    }

    
    @IBOutlet weak var fecharTela: UIButton! // outlet
    var conjuntoRecompensas:[classeDasRecompensas] = []
    var ganhou = true
    
    @IBOutlet weak var parabensLabel: UILabel!
    @IBOutlet weak var ganhouLabel: UILabel!
    @IBOutlet weak var legendaLabel: UILabel!
    
    @IBOutlet weak var regadorImagem: UIImageView!
    @IBOutlet weak var plantaImagem: UIImageView!
    @IBOutlet weak var moscaImagem: UIImageView!
    
    // recompensas aleatorias
    func randomizar () -> Int {
        
        var indiceRecompensa:Int = Int(arc4random_uniform(UInt32(conjuntoRecompensas.count)))
        return indiceRecompensa
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recompGotas10 = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "regador"),
                                                 legendaRecompensa: "10 X GOTAS", sementesRecompensa: "c1.png")
        let recompGirassol = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "Girassol ComVaso"),
                                                  legendaRecompensa: "1 X GIRASSOL", sementesRecompensa: "sacoGirassol.png")
        let recompTulipa = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "Tulipa ComVaso"),
                                                legendaRecompensa: "1 X TULIPA", sementesRecompensa: "sacoTulipa.png")
        let recompCacto1 = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "Cacto1 ComVaso"),
                                                legendaRecompensa: "1 X CACTO FLORIDO", sementesRecompensa: "sacoCacto1.png")
        let recompRoxa = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "FlorRoxa ComVaso"),
                                              legendaRecompensa: "1 X LAVANDA", sementesRecompensa: "sacoRoxa.png")
        let recompRosa = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "FlorRosa ComVaso"),
                                              legendaRecompensa: "1 X GÉRBERA", sementesRecompensa: "sacoGerbera.png")
        let recompAmarela = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "FloresAmarelas ComVaso"),
                                                 legendaRecompensa: "1 X ALAMANDA", sementesRecompensa: "sacoAmarela.png")
        let recompVermelha = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "FloresVermelhas ComVaso"),
                                                  legendaRecompensa: "1 X HIBISCO", sementesRecompensa: "sacoVermelha.png")
        let recompCacto2 = classeDasRecompensas(imagemRecompensa: #imageLiteral(resourceName: "Cacto2 ComVaso"),
                                                legendaRecompensa: "1 X CACTO PALMA", sementesRecompensa:"sacoCacto2.png")
        
        conjuntoRecompensas = [recompGotas10,recompGirassol,recompGotas10,recompTulipa,recompGotas10,recompCacto1,recompGotas10,recompRoxa,recompGotas10,recompRosa,recompGotas10,recompAmarela,recompGotas10,recompVermelha,recompGotas10,recompCacto2]
        
        if ganhou == false {
            parabensLabel.text = "POXA!"
            ganhouLabel.text = "VOCÊ PERDEU"
            legendaLabel.text = "TENTE DE NOVO"
            
            moscaImagem.isHidden = false
            regadorImagem.isHidden = true
            plantaImagem.isHidden = true
            
        } else {
            
    
            parabensLabel.text = "PARABÉNS"
            ganhouLabel.text = "VOCÊ GANHOU"
            
            var i = randomizar()
            legendaLabel.text = conjuntoRecompensas[i].legendaRecompensa
            
            if legendaLabel.text == "10 X GOTAS" {
                
                regadorImagem.isHidden = false
                moscaImagem.isHidden = true
                plantaImagem.isHidden = true
                
            } else {
                
        
                plantaImagem.image = conjuntoRecompensas[i].imagemRecompensa.withRenderingMode(.alwaysOriginal)
                mediadora.floresSementes.append(conjuntoRecompensas[i].sementesRecompensa)
                
                regadorImagem.isHidden = true
                moscaImagem.isHidden = true
                plantaImagem.isHidden = false

            }
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
