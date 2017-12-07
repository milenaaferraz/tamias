
import UIKit


class essevaidarcertoViewController: UIViewController,
UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionViewBoa: UICollectionView!
    
    
    
    @IBOutlet weak var numeroDeItens: UILabel!
    var itensDoJogo = ["c1.png"] // testando com os itens do jogo
    
    
    
    // var itensAdd = [] - itens recebidos, que serao adicionados
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        
        
        self.collectionViewBoa.delegate = self
        
        self.collectionViewBoa.dataSource = self

        
        // Do any additional setup after loading the view.
        
        
        
        if itensDoJogo.count == 1 {
            
            numeroDeItens.text = "1 ITEM"
            
        } else if itensDoJogo.count > 1 {
            
            numeroDeItens.text = "\(itensDoJogo.count) ITENS"
            
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        
        return itensDoJogo.count
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier:
                "collectioncell", for: indexPath) as! imagemCollectionViewCell
        
        cell.imagemDaCelula.image = UIImage(named:itensDoJogo[indexPath.row]) // nomedoarray[indexPath.row]
        
        return cell
        
    }
    
    
}
