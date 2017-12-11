
import UIKit


class essevaidarcertoViewController: UIViewController,
UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    let mediadora = Mediadora.shared
    
    @IBOutlet weak var collectionViewBoa: UICollectionView!
    
    
    
    @IBOutlet weak var numeroDeItens: UILabel!
    
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        
        
        self.collectionViewBoa.delegate = self
        
        self.collectionViewBoa.dataSource = self

        
        // Do any additional setup after loading the view.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        
        return mediadora.floresDoBau.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier:
                "collectioncell", for: indexPath) as! imagemCollectionViewCell
        
        cell.imagemDaCelula.image = UIImage(named:mediadora.floresDoBau[indexPath.row].sementesRecompensa)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {

        mediadora.floresPlantadas.append(mediadora.floresDoBau[indexPath.row])
        mediadora.floresDoBau.remove(at: 0)
        
      
    }
    
}
