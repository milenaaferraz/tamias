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
        if let plantinha = mediadora.plantas[0] {
            
            planta00.image = UIImage(named:plantinha.imagemPlantar)
            terra00.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[1] {
            
            planta01.image = UIImage(named:plantinha.imagemPlantar)
            terra01.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[2]  {
            
            planta02.image = UIImage(named:plantinha.imagemPlantar)
            terra02.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[3] {
            
            planta10.image = UIImage(named:plantinha.imagemPlantar)
            terra10.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[4]  {
            
            planta11.image = UIImage(named:plantinha.imagemPlantar)
            terra11.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[5] {
            
            planta12.image = UIImage(named:plantinha.imagemPlantar)
            terra12.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[6] {
            
            planta20.image = UIImage(named:plantinha.imagemPlantar)
            terra20.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
        }
        if let plantinha = mediadora.plantas[7]  {
            
            planta21.image = UIImage(named:plantinha.imagemPlantar)
            terra21.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[8]  {
            
            planta22.image = UIImage(named:plantinha.imagemPlantar)
            terra22.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        
        
        
        
        
    }
    
    @IBOutlet weak var simOutlet: UIButton!
    
    @IBAction func naoCerteza(_ sender: Any) {
        
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
        
        let recompensaPlantinhaVaiPlantar: classeDasRecompensas = mediadora.floresPlantadas.last!
        
        if planta00.frame.contains(local) {
            
            planta00.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[0] = recompensaPlantinhaVaiPlantar
            
            terra00.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
    

        } else if planta01.frame.contains(local) {
            
            planta01.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[1] = recompensaPlantinhaVaiPlantar
            
            terra01.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
        
            
        } else if planta02.frame.contains(local) {
            
            planta02.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[2] = recompensaPlantinhaVaiPlantar
          
            terra02.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
            
        } else if planta10.frame.contains(local) {
            
            planta10.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[3] = recompensaPlantinhaVaiPlantar
            
            terra10.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
           
            
        } else if planta11.frame.contains(local) {
            
            planta11.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[4] = recompensaPlantinhaVaiPlantar
            
            terra11.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
            
            
        } else if planta12.frame.contains(local) {
            
            planta12.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[5] = recompensaPlantinhaVaiPlantar
            
            terra12.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
           
            
        } else if planta20.frame.contains(local) {
            
            planta20.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[6] = recompensaPlantinhaVaiPlantar
            
            terra20.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
            
        } else if planta21.frame.contains(local) {
            
            planta21.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[7] = recompensaPlantinhaVaiPlantar
            
            terra21.image = #imageLiteral(resourceName: "TerraSelecionada").withRenderingMode(.alwaysOriginal)
          
            
        } else if planta22.frame.contains(local) {
            
            planta22.image = UIImage(named: recompensaPlantinhaVaiPlantar.imagemPlantar)
            mediadora.plantas[8] = recompensaPlantinhaVaiPlantar
            
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
        

        if let plantinha = mediadora.plantas[0] {
            
            planta00.image = UIImage(named:plantinha.imagemPlantar)
            terra00.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[1] {
            
            planta01.image = UIImage(named:plantinha.imagemPlantar)
            terra01.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[2]  {
            
            planta02.image = UIImage(named:plantinha.imagemPlantar)
            terra02.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[3] {
            
            planta10.image = UIImage(named:plantinha.imagemPlantar)
            terra10.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[4]  {
            
            planta11.image = UIImage(named:plantinha.imagemPlantar)
            terra11.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[5] {
            
            planta12.image = UIImage(named:plantinha.imagemPlantar)
            terra12.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[6] {
            
            planta20.image = UIImage(named:plantinha.imagemPlantar)
            terra20.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
        }
        if let plantinha = mediadora.plantas[7]  {
            
            planta21.image = UIImage(named:plantinha.imagemPlantar)
            terra21.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        if let plantinha = mediadora.plantas[8]  {
            
            planta22.image = UIImage(named:plantinha.imagemPlantar)
            terra22.image = #imageLiteral(resourceName: "TerraPlantada").withRenderingMode(.alwaysOriginal)
            
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

}


