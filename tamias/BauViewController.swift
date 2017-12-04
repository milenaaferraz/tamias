//
//  BauViewController.swift
//  tamias
//
//  Created by Renata Nogueira Porto on 29/11/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class BauViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    var imagensDosItens = ["Cacto1 NaBolinha"]
    
    @IBOutlet weak var BauCollectionView: UICollectionView!
    
    @IBOutlet weak var metasOutlet: UIButton!
    @IBOutlet weak var metasBotao: UIButton!
    
    @IBOutlet weak var jardimOutlet: UIButton!
    @IBOutlet weak var jardimBotao: UIButton!
    
    @IBOutlet weak var bauOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
        
        self.BauCollectionView.delegate = self
        self.BauCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagensDosItens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaDoBau", for: indexPath) as! BauCollectionViewCell
        
        cell.celulaImageView.image = UIImage(named:imagensDosItens[indexPath.row])
        return cell
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
