//
//  essevaidarcertoViewController.swift
//  tamias
//
//  Created by Ana Flávia Nascimento Godoy on 12/4/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class essevaidarcertoViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionViewBoa: UICollectionView!
    
   //  var itensDoJogo = ["c1.png","c2.png","famrls.png","fr.png","frx.png","fvrmls.png","grssl.png","tlp.png"]
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.collectionViewBoa.delegate = self
        self.collectionViewBoa.dataSource = self 
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! imagemCollectionViewCell
        
        cell.imagemDaCelula.image = UIImage(named: "cacto 1 na bolinha.png") // nomedoarray[indexPath.row]
        
        return cell
    }

}
