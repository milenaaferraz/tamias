//
//  jardimViewController.swift
//  tamias
//
//  Created by Ana Flávia Nascimento Godoy on 12/10/17.
//  Copyright © 2017 Milena Almeida Ferraz. All rights reserved.
//

import UIKit

class jardimViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var terrasCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.terrasCollectionView.delegate = self
        
        self.terrasCollectionView.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier:
                "celulaTerrinha", for: indexPath) as! terrinhaCollectionViewCell
//        let florCerta1 = #imageLiteral(resourceName: "FlorRosa ComVaso").withRenderingMode(.alwaysOriginal)
//        flor1.setImage(florCerta1, for: .normal)
        
        cell.terrinha.image = #imageLiteral(resourceName: "TerraVazia").withRenderingMode(.alwaysOriginal)
        
        return cell
    }
    

//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
