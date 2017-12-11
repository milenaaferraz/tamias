//
//  ViewController.swift
//  tamias
//
//  Created by Milena Almeida Ferraz on 28/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mediadora = Mediadora.shared

    
    @IBOutlet weak var temCertezaSera: UILabel!
    
    @IBAction func simCerteza(_ sender: Any) {
        
        bauOutlet.isHidden = false
        jardimOutlet.isHidden = false
        metasOutlet.isHidden = false
        
        viewDoSol.isHidden = false
        textoDoSol.isHidden = false
        imagemDoSol.isHidden = false
        
        viewDasGotas.isHidden = false
        textoDasGotas.isHidden = false
        imagemDaGota.isHidden = false
        
        simOutlet.isHidden = true
        naoOutlet.isHidden = true
        temCertezaSera.isHidden = true
        
        if mediadora.plantas[0][0] == true {
            
            planta00.image = UIImage(named:mediadora.floresPlantadas[0].imagemPlantar)
            terra00.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[0][1] == true {
            
            planta01.image = UIImage(named:mediadora.floresPlantadas[1].imagemPlantar)
            terra01.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[0][2] == true {
            
            planta02.image = UIImage(named:mediadora.floresPlantadas[2].imagemPlantar)
            terra02.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[1][0] == true {
            
            planta10.image = UIImage(named:mediadora.floresPlantadas[3].imagemPlantar)
            terra10.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[1][1] == true {
            
            planta11.image = UIImage(named:mediadora.floresPlantadas[4].imagemPlantar)
            terra11.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[1][2] == true {
            
            planta12.image = UIImage(named:mediadora.floresPlantadas[5].imagemPlantar)
            terra12.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[2][0] == true {
            
            planta20.image = UIImage(named:mediadora.floresPlantadas[6].imagemPlantar)
            terra20.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[2][1] == true {
            
            planta21.image = UIImage(named:mediadora.floresPlantadas[7].imagemPlantar)
            terra21.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[2][2] == true {
            
            planta22.image = UIImage(named:mediadora.floresPlantadas[8].imagemPlantar)
            terra22.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
        }
        
        
        
    }
    
    @IBOutlet weak var simOutlet: UIButton!
    
    @IBAction func naoCerteza(_ sender: Any) {
        
        
    }
    
    @IBOutlet weak var naoOutlet: UIButton!
    
    @IBOutlet weak var imagemDoFundo: UIImageView!
    

    @IBAction func toqueTerrinha(_ sender: UITapGestureRecognizer) {
        
        
        bauOutlet.isHidden = true
        jardimOutlet.isHidden = true
        metasOutlet.isHidden = true
        
        viewDoSol.isHidden = true
        textoDoSol.isHidden = true
        imagemDoSol.isHidden = true
        
        viewDasGotas.isHidden = true
        textoDasGotas.isHidden = true
        imagemDaGota.isHidden = true
        
        simOutlet.isHidden = false
        naoOutlet.isHidden = false
        
        temCertezaSera.isHidden = false

        
        let local = sender.location(in: self.viewDoJardim)
                
        if planta00.frame.contains(local) {
            
            planta00.image = UIImage(named:mediadora.floresPlantadas[0].imagemPlantar)
            mediadora.plantas[0][0] = true
            
            terra00.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
    

        } else if planta01.frame.contains(local) {
            
             planta01.image = UIImage(named:mediadora.floresPlantadas[1].imagemPlantar)
             mediadora.plantas[0][1] = true
            
            terra01.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
        
            
        } else if planta02.frame.contains(local) {
            
            planta02.image = UIImage(named:mediadora.floresPlantadas[2].imagemPlantar)
            mediadora.plantas[0][2] = true
          
            terra02.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
            
        } else if planta10.frame.contains(local) {
            
            planta10.image = UIImage(named:mediadora.floresPlantadas[3].imagemPlantar)
            mediadora.plantas[1][0] = true
            
            terra10.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
           
            
        } else if planta11.frame.contains(local) {
            
            planta11.image = UIImage(named:mediadora.floresPlantadas[4].imagemPlantar)
            mediadora.plantas[1][1] = true
            
            terra11.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
            
            
        } else if planta12.frame.contains(local) {
            
            planta12.image = UIImage(named:mediadora.floresPlantadas[5].imagemPlantar)
            mediadora.plantas[1][2] = true
            
            terra12.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
           
            
        } else if planta20.frame.contains(local) {
            
            planta20.image = UIImage(named:mediadora.floresPlantadas[6].imagemPlantar)
            mediadora.plantas[2][0] = true
            
            terra20.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
            
        } else if planta21.frame.contains(local) {
            
            planta21.image = UIImage(named:mediadora.floresPlantadas[7].imagemPlantar)
            mediadora.plantas[2][1] = true
            
            terra21.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
          
            
        } else if planta22.frame.contains(local) {
            
            planta22.image = UIImage(named:mediadora.floresPlantadas[8].imagemPlantar)
            mediadora.plantas[2][2] = true
            
            terra22.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
           
        }
    }
    
    
    // Jardim
    @IBOutlet weak var viewDoJardim: UIView!
    @IBOutlet weak var imagemDaCerca: UIImageView!
    
    // Terras e plantas (linhas de 0 a 2 / colunas de 0 a 2 - para funcionar em um array)
    // Linha 0
    @IBOutlet weak var terra00: UIImageView!
    @IBOutlet weak var planta00: UIImageView!
    @IBOutlet weak var terra01: UIImageView!
    @IBOutlet weak var planta01: UIImageView!
    @IBOutlet weak var terra02: UIImageView!
    @IBOutlet weak var planta02: UIImageView!
    // Linha 1
    @IBOutlet weak var terra10: UIImageView!
    @IBOutlet weak var planta10: UIImageView!
    @IBOutlet weak var terra11: UIImageView!
    @IBOutlet weak var planta11: UIImageView!
    @IBOutlet weak var terra12: UIImageView!
    @IBOutlet weak var planta12: UIImageView!
    // Linha 2
    @IBOutlet weak var terra20: UIImageView!
    @IBOutlet weak var planta20: UIImageView!
    @IBOutlet weak var terra21: UIImageView!
    @IBOutlet weak var planta21: UIImageView!
    @IBOutlet weak var terra22: UIImageView!
    @IBOutlet weak var planta22: UIImageView!
    

    // Conjunto de terras
    
    // Solzinhos
    @IBOutlet weak var viewDoSol: UIView!
    @IBOutlet weak var textoDoSol: UILabel!
    @IBOutlet weak var imagemDoSol: UIImageView!
    
    // Gotinhas
    @IBOutlet weak var viewDasGotas: UIView!
    @IBOutlet weak var textoDasGotas: UILabel!
    @IBOutlet weak var imagemDaGota: UIImageView!
    
    // Botões de baixo
    // Metas
    @IBOutlet weak var metasOutlet: UIButton!
    @IBAction func metasBotao(_ sender: Any) {
    }
    // Jardim
    @IBOutlet weak var jardimOutlet: UIButton!
    // Baú
    @IBOutlet weak var bauOutlet: UIButton!
    @IBOutlet weak var bauBotao: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textoDasGotas.text = "\(mediadora.agua)"
        textoDoSol.text = "\(mediadora.sol)"
        
        bauOutlet.isHidden = false
        jardimOutlet.isHidden = false
        metasOutlet.isHidden = false
        
        viewDoSol.isHidden = false
        textoDoSol.isHidden = false
        imagemDoSol.isHidden = false
        
        viewDasGotas.isHidden = false
        textoDasGotas.isHidden = false
        imagemDaGota.isHidden = false
        
        simOutlet.isHidden = true
        naoOutlet.isHidden = true
        
        temCertezaSera.isHidden = true
    
    }
    
    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(false)
        
        simOutlet.isHidden = true
        naoOutlet.isHidden = true
        
        temCertezaSera.isHidden = true
        
        if mediadora.plantas[0][0] == true {
            
            planta00.image = UIImage(named:mediadora.floresPlantadas[0].imagemPlantar)
            terra00.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[0][1] == true {
            
            planta01.image = UIImage(named:mediadora.floresPlantadas[1].imagemPlantar)
            terra01.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[0][2] == true {
            
            planta02.image = UIImage(named:mediadora.floresPlantadas[2].imagemPlantar)
            terra02.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[1][0] == true {
            
            planta10.image = UIImage(named:mediadora.floresPlantadas[3].imagemPlantar)
            terra10.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[1][1] == true {
            
            planta11.image = UIImage(named:mediadora.floresPlantadas[4].imagemPlantar)
            terra11.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[1][2] == true {
            
            planta12.image = UIImage(named:mediadora.floresPlantadas[5].imagemPlantar)
            terra12.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[2][0] == true {
            
            planta20.image = UIImage(named:mediadora.floresPlantadas[6].imagemPlantar)
            terra20.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
        }
        if mediadora.plantas[2][1] == true {
            
            planta21.image = UIImage(named:mediadora.floresPlantadas[7].imagemPlantar)
            terra21.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if mediadora.plantas[2][2] == true {
            
            planta22.image = UIImage(named:mediadora.floresPlantadas[8].imagemPlantar)
            terra22.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

}


